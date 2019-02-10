require 'docker'
require 'docker-swarm-sdk'
require_relative './hash_helper'

module SwarmHelper

  def engine_version
    `docker info -f '{{ .ServerVersion }}'`.chomp
  end

  def attach_swarm
    @master_connection = Docker::Swarm::Connection.new('unix:///var/run/docker.sock')
    swarm_init_options = { "ListenAddr" => "0.0.0.0:2377", 'AdvertiseAddr' => 'enp0s8:2377' }
    begin
      @swarm = Docker::Swarm::Swarm.swarm(@master_connection)
    rescue Excon::Error::ServiceUnavailable => su
      @swarm = create_swarm(@master_connection, swarm_init_options)
      @joined_swarm = true
    end
  end

  def detach_swarm
    if @joined_swarm
      @swarm.remove
    end
  end

  def create_service(name:, image:, **options)
    @swarm.create_service service_options(name: name, image: image, opts: options)
  end

  def delete_service(name)
    service = @swarm.find_service_by_name(name)
    service.remove if service
  end

  def create_network(name, driver = 'overlay', attachable = true)
    opts = {"Name": name, "Driver": driver, "Attachable": attachable, "Aliases": [name]}
    @joined_networks = [] unless @joined_networks
    @joined_networks << @swarm.create_network(opts)
  end

  def delete_networks
    @joined_networks.each do |ntwk|
      @master_connection.delete("/networks/#{ntwk.id}", {}, expects: [204, 404, 500], full_response: true)
      @joined_networks.delete ntwk
    end
  end


  def create_secret(name:, data: 'VEhJUyBJUyBOT1QgQSBSRUFMIENFUlRJRklDQVRFCg==', filename: name)
    body = {
        "Name": name,
        "Data": data
    }
    resp = @master_connection.post('/secrets/create', {}, body: body.to_json, full_response: true, expects: [201, 409, 500, 503])
    {"SecretID": JSON.parse(resp[:body])['ID'], "SecretName": name, "File": { Name: filename } }
  end

  def create_config(name:, data: 'VEhJUyBJUyBOT1QgQSBSRUFMIENFUlRJRklDQVRFCg==', filename: name)
    body = {
        "Name": name,
        "Data": data
    }
    resp = @master_connection.post('/configs/create', {}, body: body.to_json, full_response: true, expects: [201, 409, 500, 503])
    {"ConfigID": JSON.parse(resp[:body])['ID'], "ConfigName": name, "File": { Name: filename } }
  end
  private

  def default_service_options
    {
      mounts: [],
      restart_policy: 'any',
      restart_limit: 3,
      restart_delay: 5,
      environment: [],
      user: 'root',
      ports: [],
      placement_constraints: [],
      hosts: [],
      networks: [],
      labels: {},
      global: false,
      replicas: 1,
      secrets: [],
      configs: []
    }
  end

  def service_options(name:, image:, opts: {})
    options = default_service_options.merge(opts)

    {"Name": name,
     "TaskTemplate": {
       "ContainerSpec": { "Networks": [], "Image": image, "Mounts": options[:mounts], "User": options[:user],
                          "Hosts": options[:hosts], "Secrets": options[:secrets], "Configs": options[:configs] }.reject { |k, v| v.nil?},
       "Env": options[:environment],
       "LogDriver": {" Name": "json-file", "Options": { "max-file": "3", "max-size": "10M"} },
       "Placement": { "Constraints": options[:placement_constraints]},
       "RestartPolicy": { "Condition": options[:restart_policy], "Delay": options[:restart_delay], "MaxAttempts": options[:restart_limit] },
       "Networks": options[:networks]
     },
     "Mode": (options[:global] ? { "Global": {} } : {
         "Replicated": { "Replicas": options[:replicas] },
     }),
     "EndpointSpec": {
       "Ports": options[:ports]
     },
    "Labels": options[:labels]
    }
  end

  def create_swarm(connection, swarm_init_options)
    resp = connection.post('/swarm/init', {}, :body => swarm_init_options.to_json, full_response: true, expects: [200, 404, 406, 500])
    if (resp.status == 200)
      swarm = Docker::Swarm::Swarm.swarm(connection, swarm_init_options)
      manager_node = swarm.nodes.find {|n|
        (n.hash['ManagerStatus']) && (n.hash['ManagerStatus']['Leader'] == true)
      }
      listen_address = manager_node.hash['ManagerStatus']['Addr']
      swarm.store_manager(connection, listen_address)
      return swarm
    end
  end
end