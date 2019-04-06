# frozen_string_literal: true

require 'json'
class RabbitMQHelper
  def initialize
    @user = ENV['RABBITMQ_USER'] || 'guest'
    @password = ENV['RABBITMQ_PASSWORD'] || 'guest'
    @url_base = property[:variables][:rabbitmq_url] || 'http://localhost:15672'
    @image_name = 'rabbitmq:3-management'
  end

  def create_vhost(vhost)
    resource = RestClient::Resource.new "#{@url_base}/api/vhosts/#{vhost}", @user, @password
    resource.put '{ "tracing": "false" }'
    create_permission(vhost, @user)
  end

  def create_permission(vhost, user, read = '.*', write = '.*', configure = '.*')
    resource = RestClient::Resource.new "#{@url_base}/api/permissions/#{vhost}/#{user}", @user, @password
    payload = { read: read, write: write, configure: configure }
    resource.put payload.to_json
  end

  def create_user(user, password, tag = 'management')
    resource = RestClient::Resource.new "#{@url_base}/api/users/#{user}", @user, @password
    user = { password: password, tags: tag }
    resource.put user.to_json
  end

  def create_policy(vhost, name, pattern = '.*', definition)
    resource = RestClient::Resource.new "#{@url_base}/api/policies/#{vhost}/#{name}", @user, @password
    policy = { pattern: pattern, definition: definition }
    resource.put policy.to_json
  end

  def start_rabbitmq_container(opts = {})
    options = default_options.deep_merge opts
    Docker::Image.create('fromImage' => @image_name, 'Ports' => []) unless Docker::Image.exist? @image_name
    @rabbitmq_container = Docker::Container.create(
      options
    )
    @rabbitmq_container.start
    @rabbitmq_id = @rabbitmq_container.id[0..10]
    sleep(10)
  end

  def stop_rabbitmq_container
    @rabbitmq_container.stop
    @rabbitmq_container.delete
  end

  def default_options
    { 'name' => "rabbitmq_#{Time.now.to_i}",
      'Image' => @image_name,
      'HostConfig' => {
        'PortBindings' => {
          '15672/tcp' => [{ 'HostPort' => '15672' }]
        }
      },
      'Hostname' => 'rabbitmq' }
  end
end
