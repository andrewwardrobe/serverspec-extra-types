# frozen_string_literal: true

require 'docker'
require 'json'
require 'rest-client'
require_relative './hash_helper'

module JenkinsHelper
  def default_options
    { 'name' => "jenkins_#{Time.now.to_i}",
      'Image' => 'jenkins/jenkins:lts',
      'HostConfig' => {
        'PortBindings' => {
          '8080/tcp' => [{ 'HostPort' => '38080' }]
        }
      },
      'Hostname' => 'jenkins',
      'Env' => ['JAVA_OPTS=-Djenkins.install.runSetupWizard=false'] }
  end

  def start_jenkins_container(opts = {})
    options = default_options.deep_merge opts
    Docker::Image.create('fromImage' => options['Image'], 'Ports' => []) unless Docker::Image.exist? options['Image']
    @jenkins_container = Docker::Container.create(
      options
    )
    @jenkins_container.start
    @jenkins_id = @jenkins_container.id[0..10]
    sleep(10)
  end

  def stop_jenkins_container
    @jenkins_container.stop
    @jenkins_container.delete
  end

  def install_jenkins_plugin(plugin, version = 'latest', timeout = 30)
    errCode = 0
    begin
      response = RestClient.post'http://localhost:38080/pluginManager/installNecessaryPlugins',
                                "<jenkins><install plugin=\"#{plugin}@#{version}\" /></jenkins>"
    rescue RestClient::Found
      errCode = 200
    rescue RestClient::ServiceUnavailable
      errCode = 503
    end

    errCode = wait_for_plugin plugin, timeout
    errCode
  end

  private

  def wait_for_plugin(pluginName, timeout = 30)
    tries = 0
    while tries < timeout * 10
      begin
      response = RestClient.get 'http://localhost:38080/pluginManager/api/json?depth=1'
      data = JSON.parse(response.body)
      break if data['plugins'].find { |plugin| plugin['shortName'] == pluginName }
      rescue RestClient::Found

      rescue RestClient::ServiceUnavailable

      end


      puts "Waiting for pluging to be come availible"
      sleep 0.1
      tries += 1
    end
  end
    def wait_for_plugin(pluginName, timeout = 30)
    tries = 0
    while tries < timeout * 10
      response = RestClient.get 'http://localhost:38080/pluginManager/api/json?depth=1'
      data = JSON.parse(response.body)
      break if data['plugins'].find {|plugin| plugin['shortName'] == pluginName}
      sleep 0.1
      tries = tries + 1
    end
  end
end
