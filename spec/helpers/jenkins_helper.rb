# frozen_string_literal: true

require 'docker'
require 'json'
require 'rest-client'
require_relative './hash_helper'

module JenkinsHelper

  def jenkins_url
    property[:variables][:jenkins_url] || 'http://localhost:8080'
  end

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
    sleep(opts[:timeout] || 60)
  end

  def stop_jenkins_container
    @jenkins_container.stop
    @jenkins_container.delete
  end

  def restart_jenkins_container(opts = {})
    @jenkins_container.restart
    sleep(opts[:timeout] || 30)
  end

  def install_jenkins_plugin(plugin, version = 'latest', timeout = 30)
    errCode = 0
    begin
      response = RestClient.post "#{jenkins_url}/pluginManager/installNecessaryPlugins",
                                "<jenkins><install plugin=\"#{plugin}@#{version}\" /></jenkins>"
    rescue RestClient::Found
      errCode = 200
    rescue RestClient::ServiceUnavailable
      errCode = 503
    end

    errCode = wait_for_plugin plugin, timeout
    errCode
  end

  def create_user_pass_credential(id, username, password, description, scope = 'GLOBAL')
    body = {"" => "0",
      "credentials" => {
        "scope" => scope,
        "id" => id,
        "username" => username,
        "password" => password,
        "description" => description,
        "$class" => "com.cloudbees.plugins.credentials.impl.UsernamePasswordCredentialsImpl"
      }
    }
    begin
    RestClient.post("#{jenkins_url}/credentials/store/system/domain/_/createCredentials", "json=#{body.to_json}")
    rescue RestClient::Found

    end
  end

  def create_private_key_credential(id, username, sshkey, passphrase, description, scope = 'GLOBAL')
    keySource = {
      "$class" => 'com.cloudbees.jenkins.plugins.sshcredentials.impl.BasicSSHUserPrivateKey$DirectEntryPrivateKeySource',
      "privateKey" => sshkey
    }
    body = {"" => "0",
      "credentials" => {
        "scope" => scope,
        "id" => id,
        "username" => username,
        "passphrase" => passphrase,
        "description" => description,
        "privateKeySource" => keySource,
        "$class" => "com.cloudbees.jenkins.plugins.sshcredentials.impl.BasicSSHUserPrivateKey"
      }
    }
    begin
    RestClient.post("#{jenkins_url}/credentials/store/system/domain/_/createCredentials", "json=#{body.to_json}")
    rescue RestClient::Found

    end
  end

  def create_gitlab_credential(id, apiToken, description, scope = 'GLOBAL')
    body = {"" => "0",
            "credentials" => {
                "scope" => scope,
                "id" => id,
                "apiToken" => apiToken,
                "description" => description,
                "$class" => "com.dabsquared.gitlabjenkins.connection.GitLabApiTokenImpl"
            }
    }
    begin
      RestClient.post("#{jenkins_url}/credentials/store/system/domain/_/createCredentials", "json=#{body.to_json}")
    rescue RestClient::Found
    rescue RestClient::InternalServerError => ise
      puts "Unable to create gitlab credential: #{ise.message}"
    end
  end

  def create_string_credential(id, secret, description, scope = 'GLOBAL')
    body = {"" => "0",
            "credentials" => {
                "scope" => scope,
                "id" => id,
                "secret" => secret,
                "description" => description,
                "$class" => "org.jenkinsci.plugins.plaincredentials.impl.StringCredentialsImpl"
            }
    }
    begin
      RestClient.post("#{jenkins_url}/credentials/store/system/domain/_/createCredentials", "json=#{body.to_json}")
    rescue RestClient::Found
    end
  end

  def create_aws_credential(id, accessKey, secretKey, description, scope = 'GLOBAL', iamRoleArn = '', iamMfaSerialNumber = '')
    body = {"" => "0",
            "credentials" => {
                "scope" => scope,
                "id" => id,
                "accessKey" => accessKey,
                "secretKey" => secretKey,
                "iamRoleArn" => iamRoleArn,
                "iamMfaSerialNumber" => iamMfaSerialNumber,
                "description" => description,
                "$class" => "com.cloudbees.jenkins.plugins.awscredentials.AWSCredentialsImpl"
            }
    }
    begin
      RestClient.post("#{jenkins_url}/credentials/store/system/domain/_/createCredentials", "json=#{body.to_json}")
    rescue RestClient::Found
    end
  end


  def install_job_plugins
    install_jenkins_plugin('cloudbees-folders')
    install_jenkins_plugin('maven-plugin')
    install_jenkins_plugin('pipeline')
    install_jenkins_plugin('workflow-multibranch')
  end
  private

  def wait_for_plugin(pluginName, timeout = 30)
    tries = 0
    while tries < timeout * 10
      begin
      response = RestClient.get "#{jenkins_url}/pluginManager/api/json?depth=1"
      data = JSON.parse(response.body)
      break if data['plugins'].find { |plugin| plugin['shortName'] == pluginName }
      rescue RestClient::Found

      rescue RestClient::ServiceUnavailable

      end
      sleep 0.1
      tries += 1
    end
  end
end
