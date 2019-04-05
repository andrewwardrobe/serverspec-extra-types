# ServerspecExtraTypes

serverspec-extra-types is a set of addition resource types and matchers for ServerSpec, providing types for technologies such as 
docker swarm, consul, and rabbitmq.

All checks run on the target, which can be useful when executing via a bastion host


## Requirements
* rabbitmq and consul checks requires curl to be installed on the target

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'serverspec-extra-types'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install serverspec-extra-types
## Usage

Add the following to your spec_helper.rb

```ruby
require 'serverspec-extra-types'
```

## Resource types
[curl](#curl) | 
[consul_node](#consul_node) | [consul_node_list](#consul_node_list) | [consul_service](#consul_service) | 
[consul_service_list](#consul_service_list) | 
[docker_config](#docker_config) | [docker_container](#docker_container) | [docker_network](#docker_network) | 
[docker_node](#docker_node) | [docker_secret](#docker_secret) | [docker_service](#docker_service) | 
[jenkins_credential](#jenkins_credential) |[jenkins_job](#jenkins_job) | [jenkins_plugin](#jenkins_plugin) | 
[nfs_export](#nfs_export) | 
[rabbitmq_node_list](#rabbitmq_node_list) | [rabbitmq_user_permission](#rabbitmq_user_permission) | 
[rabbitmq_vhost_list](#rabbitmq_vhost_list) | [rabbitmq_vhost_policy](#rabbitmq_vhost_policy) | [sudo_user](#sudo_user)

### curl <a name="curl" ></a>
<sub><sup>Please note: This type requires curl to be installed on the target host</sup></sub>

The curl resource allow for check against remote url. Addition parameters are avaliable to allow for insecure certifactes and follow redirects

Example:
```ruby
describe curl("https://example.org") do
  it { should respond_with_OK }
end

#Without certificate verification
describe curl("https://example.org", insecure: true) do
  it { should respond_with_OK }
end

#Following redirects 
describe curl("https://example.org", follow_redirects: true) do
  it { should respond_with_OK }
end
```

For a full list of HTTP matchers see [HTTP Matchers](http_matchers.md)

### consul_node <a name="consul_node" ></a>
<sub><sup>Please note: This type requires curl to be installed on the target host</sup></sub>
##### have_datacenter
```ruby
describe consul_node('consul') do
  it { should have_datacenter 'dc1'}
end
```

##### have_service
```ruby
describe consul_node('consul') do
  it { should have_datacenter 'dc1'}
end
```
<sub><sup>Supports the same additional parameters as the curl matcher</sup></sub>
### consul_node_list <a name="consul_node_list" ></a>
<sub><sup>Please note: This type requires curl to be installed on the target host</sup></sub>
##### have_node
```ruby
describe consul_node_list() do
    it { should have_node 'consul' }
end
```
<sub><sup>Supports the same additional parameters as the curl matcher</sup></sub>
### consul_service <a name="consul_service" ></a>
<sub><sup>Please note: This type requires curl to be installed on the target host</sup></sub>
#### have_id
```ruby
describe consul_service('consul') do
  it { should have_id('7ba9a647-0adb-8c92-b0c9-5b011b3530a8') }
end
```

#### have_node
```ruby
describe consul_service('consul') do
  it { should have_node('consul') }
end
```

#### have_address
```ruby
describe consul_service('consul') do
  it { should have_address('127.0.0.1') }
end
```

#### have_datacenter
```ruby
describe consul_service('consul') do
  it { should have_datacenter('dc1') }
end
```

#### have_tagged_addresses
```ruby
describe consul_service('consul') do
  it { should have_tagged_addresses({"lan"=>"127.0.0.1", "wan"=>"127.0.0.1"}) }
end
```

#### have_node_meta
```ruby
describe consul_service('consul') do
  it { should have_node_meta({"consul-network-segment"=>""}) }
end
```

#### have_service_kind
```ruby
describe consul_service('consul') do
  it { should have_service_kind('') }
end
```

#### have_service_id
```ruby
describe consul_service('consul') do
  it { should have_service_id('consul') }
end
```

#### have_service_name
```ruby
describe consul_service('consul') do
  it { should have_service_name('consul') }
end
```

#### have_service_tags
```ruby
describe consul_service('consul') do
  it { should have_service_tags([]) }
end
```

#### have_service_address
```ruby
describe consul_service('consul') do
  it { should have_service_address('') }
end
```

#### have_service_weights
```ruby
describe consul_service('consul') do
  it { should have_service_weights({"Passing"=>1, "Warning"=>1}) }
end
```

#### have_service_meta
```ruby
describe consul_service('consul') do
  it { should have_service_meta({}) }
end
```

#### have_service_port
```ruby
describe consul_service('consul') do
  it { should have_service_port(8300) }
end
```

#### have_service_enable_tag_override
```ruby
describe consul_service('consul') do
  it { should have_service_enable_tag_override(false) }
end
```

#### have_service_proxy_destination
```ruby
describe consul_service('consul') do
  it { should have_service_proxy_destination('') }
end
```

#### have_service_proxy
```ruby
describe consul_service('consul') do
  it { should have_service_proxy({}) }
end
```

#### have_service_connect
```ruby
describe consul_service('consul') do
  it { should have_service_connect({}) }
end
```

#### have_create_index
```ruby
describe consul_service('consul') do
  it { should have_create_index(9) }
end
```

#### have_modify_index
```ruby
describe consul_service('consul') do
  it { should have_modify_index(9) }
end
```
<sub><sup>Supports the same additional parameters as the curl matcher</sup></sub>
### consul_service_list <a name="consul_service_list" ></a>
<sub><sup>Please note: This type requires curl to be installed on the target host</sup></sub>
##### have_service
```ruby
describe consul_service_list() do
    it { should have_service 'consul' }
end
```
<sub><sup>Supports the same additional parameters as the curl matcher</sup></sub>

### docker_config <a name="docker_config"></a>

##### exists
Check if config exists
```ruby
  describe docker_config('test.conf') do
    it { should exist }
  end
```

##### have_name
Check if config has a specific name
```ruby
  describe docker_config('test.conf') do
    it { should have_name 'test.conf' }
  end
```

##### have_data
Check if config data matches a string
```ruby
  describe docker_config('test.conf') do
    it { should have_data 'Some config data' }
  end
```


##### have_data64
Check if config base64 encoded data matches a string
```ruby
  describe docker_config('test.conf') do
    it { should have_data64 'U29tZSBjb25maWcgZGF0YQ=='}
  end
```


##### be_labeled /be_labelled
Check if config has a specific label
```ruby
  describe docker_config('test.conf') do
    it { should have_label('some.label.key') }
    # Check for value 
    it { should have_label('some.label.key').with_value('value') }
  end
```

### docker_container <a name="docker_container"></a>
Extension of the serverspec docker container type, and provides the following matchers:

this type now supports selecting the container via a filter or by name
##### exist
Check if a container exists by name
```ruby
describe docker_container('focused_currie') do
  it { should exist }
end

# Using a filter (useful for containers launch via docker swarm)
describe docker_container('name=focused_currie') do
  it { should exist }
end
```
Check if a container exists by filter
```ruby
# Look for a container publishing port 80
describe docker_container('publish=80') do
  it { should exist }
end
```

##### be_running
Check if a container is running (from serverspec)
```ruby
describe docker_container('focused_curie') do
  it { should be_running }
end
```
##### have_image
Check if container is running a specfic image
```ruby
describe docker_container('focused_currie') do
  it { should have_image('jenkins/jenkins:lts') }
end
```
##### have_hostname / has_host_name
Check container hostname
```ruby
describe docker_container('focused_currie') do
  it { should have_hostname('container1') }
end
```
##### have_domainname / have_domain_name
Check container domain name
```ruby
describe docker_container('focused_currie') do
  it { should have_domainname('leek.com') }
end
```
##### have_user / run_as_user
Check if container is running as the specified user
```ruby
describe docker_container('focused_currie') do
  it { should run_as_user('jenkins') }
end
```

##### map_port
Check if host port is mapped to container port
```ruby
describe docker_container('focused_currie') do
  it { should map_port('80','8080') }
end
```
Check if host port is mapped to container port using a specific protocol
```ruby
describe docker_container('focused_currie') do
  it { should map_port('80','8080').using_protocol('tcp') }
end
```
##### have_volume
Check the for a volume (from serverspec)
```ruby
describe docker_container('focused_currie') do
  it {  it { should have_volume('/tmp','/data') }}
end
```
##### have_mount
Check the for mounted volume
```ruby
describe docker_container('focused_currie') do
  it { should have_mount('/var/run/docker.sock', '/var/run/docker.sock') }
end
```
##### have_restart_policy
Check the containers restart policy
```ruby
describe docker_container('focused_currie') do
  it { should have_restart_policy('always') }
end
```
##### have_restart_limit
Check the containers restart limit
```ruby
describe docker_container('focused_currie') do
  it { should have_restart_limit(1) }
end
```
##### have_host
Check for additional /etc/hosts entries
```ruby
describe docker_container('focused_currie') do
  it { should have_host('8.8.8.8 dns') }
end
```
##### have_environment_variable
Check if the container has an specific environment variable
```ruby
describe docker_container('focused_currie') do
  it { should have_environment_variable('CONSUL_VERSION')  }
end
# check its value
describe docker_container('focused_currie') do
  it { should have_environment_variable('CONSUL_VERSION').with_value('1.2.0') }
end
```

##### be_privileged
Check if the container runs in privileged mode
```ruby
describe docker_container('focused_currie') do
  it { should be_privileged }
end
```

##### publishes_all_ports
Check if the container publishes all exposed ports
```ruby
describe docker_container('focused_currie') do
  it { should publishes_all_ports }
end
```



### docker_node <a name="docker_node" ></a>

##### exist
Check if docker node exists
```ruby
describe docker_node('somehost') do
  it { should exist }
end
```

##### be_manager / be_a_manager
Check if docker node is a manager node
```ruby
describe docker_node(`hostname -f`.chomp) do
  it { should be_a_manager }
end
```

##### be_worker / be_a_worker
Check if docker node exists
```ruby
describe docker_node('somehost') do
  it { should be_a_worker }
end
```

##### have_engine_version
Check engine version
```ruby
describe docker_node('somehost') do
  it { should have_engine_version '18.09.1' }
end
```

##### be_active
Check if node is active
```ruby
describe docker_node('somehost') do
  it { should be_active }
end
```

##### be_draining
Check if node is draining

```ruby
describe docker_node('somehost') do
  it { should be_draining }
end
```

##### be_paused
Check if node is paused
```ruby
describe docker_node('somehost') do
  it { should be_paused }
end
```

### docker_network <a name="docker_network" ></a>

##### exist
Check if network exists
```ruby
describe docker_network('test_network') do
  it { should exist }
end
```
##### be_attachable
Check if network is attachable
```ruby
describe docker_network('test_network') do
  it { should be_attachable }
end
```
##### be_swarm_scoped
Check if network is swarm scoped
```ruby
describe docker_network('test_network') do
  it { should be_swarm_scoped }
end
```

##### have_driver
Check if network uses a specific driver
```ruby
describe docker_network('test_network') do
  it { should have_driver('overlay') }
end
```

##### be_overlay
Check if network is an overlay network
```ruby
describe docker_network('test_network') do
  it { should be_overlay }
end
```

##### be_internal
Check if network is internal
```ruby
describe docker_network('test_network') do
  it { should_not be_internal }
end
```

##### be_ingress
Check if network is an ingress network
```ruby
describe docker_network('test_network') do
  it { should_not be_ingress }
end
```

##### be_IPv6_enabled
Check if network is IPv6 enabled
```ruby
describe docker_network('test_network') do
  it { should_not be_IPv6_enabled }
end
```

### docker_secret <a name="docker_secret"></a>

##### exists
Check if secret exists
```ruby
  describe docker_secret('secret.key') do
    it { should exist }
  end
```

##### have_name
Check if secret has a specific name
```ruby
  describe docker_secret('secret.key') do
    it { should have_name 'secret.key' }
  end
```

##### be_labeled /be_labelled
Check if secret has a specific label
```ruby
  describe docker_secret('secret.key') do
    it { should have_label('some.label.key') }
    # Check for value 
    it { should have_label('some.label.key').with_value('value') }
  end
```


### docker_service
##### exist
Check if a service exists by name
```ruby
describe docker_service('my_service') do
  it { should exist }
end
```
##### have_image
Check if service is running a specfic image
```ruby
describe docker_service('my-awesome-service') do
  it { should have_image('jenkins/jenkins:lts') }
end
```

##### have_user / run_as_user
Check if service is running as the specified user
```ruby
describe docker_service('my-awesome-service') do
  it { should run_as_user('jenkins') }
end
```

##### map_port
Check if host port is mapped to service port
```ruby
describe docker_service('my-awesome-service') do
  it { should map_port('80','8080') }
end
```
Check if host port is mapped to service port using a specific protocol
```ruby
describe docker_service('my-awesome-service') do
  it { should map_port('80','8080').using_protocol('tcp') }
end
```
##### have_volume
Check the for a volume (from serverspec)
```ruby
describe docker_service('my-awesome-service') do
  it {  it { should have_volume('/tmp','/data') }}
end
```
##### have_mount
Check the for mounted volume
```ruby
describe docker_service('my-awesome-service') do
  it { should have_mount('/var/run/docker.sock', '/var/run/docker.sock') }
end
```
##### have_restart_policy
Check the services restart policy
```ruby
describe docker_service('my-awesome-service') do
  it { should have_restart_policy('any') }
end
```
##### have_restart_limit
Check the services restart limit
```ruby
describe docker_service('my-awesome-service') do
  it { should have_restart_limit(1) }
end
```
##### have_host
Check for additional /etc/hosts entries
```ruby
describe docker_service('my-awesome-service') do
  it { should have_host('8.8.8.8 dns') }
end
```
##### have_environment_variable
Check if the service has an specific environment variable
```ruby
describe docker_service('my-awesome-service') do
  it { should have_environment_variable('CONSUL_VERSION')  }
end
# check its value
describe docker_service('my-awesome-service') do
  it { should have_environment_variable('CONSUL_VERSION').with_value('1.2.0') }
end
```

##### be_labeled/be_labelled
Check if the service has an specific label
```ruby
describe docker_service('my-awesome-service') do
  it { should be_labeled('CONSUL_VERSION')  }
end
# check its value
describe docker_service('my-awesome-service') do
  it { should be_labeled('CONSUL_VERSION').with_value('1.2.0') }
end
```
This matcher supports both the UK and US spelling of labelled and also has have_label as an alias but this may conflict with dockerspec's have_lable matcher if using along side
##### have_config
Check the service has a particular config
```ruby
describe docker_service('my-awesome-service') do
  # Check that it uses a config
  it { should have_config('nginx.conf')  } 
  # Check that it places the config in a particular location
  it { should have_config('nginx.conf', '/some/target/path')  }  
end
```
##### have_secret
Check the service has a particular secret
```ruby
describe docker_service('my-awesome-service') do
  # Check that it uses a secret
  it { should have_secret('secret.crt')  } 
  # Check that it places the secret in a particular location
  it { should have_secret('secret.crt', '/some/target/path')  }  
end
```

##### be_global
Check the service is running in global mode
```ruby
describe docker_service('my-awesome-service') do
  it { should be_global } 
end
```
##### be_replicated
Check the service is running in replicated mode
```ruby
describe docker_service('my-awesome-service') do
  it { should be_replicated } 
end
```
##### have_replica_count
Check the number of replicas the service has
```ruby
describe docker_service('my-awesome-service') do
  it { should have_replica_count 2 } 
end
```

##### have_placement_constraint
Check the number of replicas the service has
```ruby
describe docker_service('my-awesome-service') do
  it { should have_placement_constraint('node.role == manager') } 
end
```


### jenkins_credential <a name="jenkins_credential" ></a>
<sub><sup>Please note: This type requires curl to be installed on the target host</sup></sub>

_TODO_
<sub><sup>Supports the same additional parameters as the curl matcher</sup></sub>
### jenkins_job <a name="jenkins_job" ></a>
<sub><sup>Please note: This type requires curl to be installed on the target host</sup></sub>

_TODO_

### jenkins_plugin <a name="jenkins_plugin" ></a>
<sub><sup>Please note: This type requires curl to be installed on the target host</sup></sub>

_TODO_
<sub><sup>Supports the same additional parameters as the curl matcher</sup></sub>
### nfs_export(export) <a name="nfs_export" ></a>
#### exist
Verifies that the specified export exists
```ruby
describe nfs_export('/var/nfsroot') do
  it { should exist }
  it { should have_host('192.168.1.0/16') }
  it { should have_host('192.168.1.0/16').with_option('root_squash') }
  it { should have_host('192.168.1.0/16').with_options('rw,root_squash') }
  it { should have_host('192.168.1.0/16').with_options(%q[rw root_squash subtree_check]) }
end
```
#### have_host
Verifies that the specified export has permission for the specified host/cidr range

Supports a with_option matcher to verify if the export has a specifed export option
Supports a with_options matcher to verify options in list format
```ruby
describe nfs_export('/var/nfsroot') do
  it { should have_host('192.168.1.0/16') }
  # Check for a specified option
  it { should have_host('192.168.1.0/16').with_option('root_squash') }
  # Check for a list of options as a comma delimited string (order is not important)
  it { should have_host('192.168.1.0/16').with_options('rw,root_squash') }
  # Check for a list of options as an array
  it { should have_host('192.168.1.0/16').with_options(%q[rw root_squash subtree_check]) }
end
```


### rabbitmq_node_list <a name="rabbitmq_node_list" ></a>
<sub><sup>Please note: This type requires curl to be installed on the target host</sup></sub>
#### have_count
Verifies the number of nodes in the node list
```ruby
describe rabbitmq_node_list do
  it { should have_count(1) }
end
```
<sub><sup>Supports the same additional parameters as the curl matcher</sup></sub>
### rabbitmq_user_permission <a name="rabbitmq_user_permission" ></a>
<sub><sup>Please note: This type requires curl to be installed on the target host</sup></sub>
#### read_from_queue(vhost, queue)
Verifies that the user can read from the specifed queue on the specified vhost
```ruby
describe rabbitmq_user_permission('MyUser') do
  it { should read_from_queue('MyVhost', 'Q1') }
end
```

#### write_to_queue(vhost, queue)
Verifies that the user can read from the specifed queue on the specified vhost
```ruby
describe rabbitmq_user_permission('MyUser') do
  it { should write_to_queue('MyVhost', 'Q1')  }
end
```

#### configure_queue(vhost, queue)
Verifies that the user can configure the specified queue on the specified vhost
```ruby
describe rabbitmq_user_permission('MyUser') do
  it { should configure_queue('MyVhost', 'Q1') }
end
```

<sub><sup>Supports the same additional parameters as the curl matcher</sup></sub>

### rabbitmq_vhost_list <a name="rabbitmq_vhost_list" ></a>
<sub><sup>Please note: This type requires curl to be installed on the target host</sup></sub>

#### have_vhost(vhost)
Verifies that the vhost_list contains the specified vhost
```ruby
describe rabbitmq_vhost_list do
  it { should have_vhost('MyVhost') }
end
```
<sub><sup>Supports the same additional parameters as the curl matcher</sup></sub>

### rabbitmq_vhost_policy(policy, vhost) <a name="rabbitmq_vhost_policy" ></a>
<sub><sup>Please note: This type requires curl to be installed on the target host</sup></sub>
#### exists
Verifies that the specified policy exists on a given vhost
```ruby
describe rabbitmq_vhost_policy('ha-all', 'MyVhost') do
  it { should exist }
end
```

#### have_ha_mode(mode)
Verifies the high availability mode
```ruby
describe rabbitmq_vhost_policy('ha-all', 'MyVhost') do
  it { should have_ha_mode 'exactly' }
end
```
#### have_ha_nodes(count)
Verifies the number of high availability nodes
```ruby
describe rabbitmq_vhost_policy('ha-all', 'MyVhost') do
  it { should have_ha_nodes 2 }
end
```
#### have_ha_sync_mode(mode)
Verifies the high availability syncronisation mode
```ruby
describe rabbitmq_vhost_policy('ha-all', 'MyVhost') do
  it { should have_ha_sync_mode 'automatic' }
end
```
#### apply_to(type)
Verifies that the policy is applies to *type*
```ruby
describe rabbitmq_vhost_policy('ha-all', 'MyVhost') do
  it { should apply_to }
end
```

#### mirror_exchanges
Verifies the policy applies to onlyexchanges
```ruby
describe rabbitmq_vhost_policy('ha-all', 'MyVhost') do
  it { should mirror_exchanges }
end
```

#### mirror_queues
Verifies the policy applies to both queues and exchanges
```ruby
describe rabbitmq_vhost_policy('ha-all', 'MyVhost') do
  it { should mirror_queues }
end
```

#### mirror_all
Verifies the policy applies to both queues and exchanges
```ruby
describe rabbitmq_vhost_policy('ha-all', 'MyVhost') do
  it { should mirror_all }
end
```

<sub><sup>Supports the same additional parameters as the curl matcher</sup></sub>

### sudo_user <a name="sudo_user" ></a>
Check the sudo permissions of a given user

##### exist
Checks if the user exists and is in the sudoers file
```ruby
describe sudo_user('someuser') do
  it { should exist }
end
```

##### have_sudo_disabled
Ensures the user has no sudo permssions
```ruby
describe sudo_user('someuser') do
  it { should have_sudo_disabled }
end
```

##### be_allowed_to_run_command
Ensures the user can run a command
```ruby
describe sudo_user('someuser') do
  it { should be_allowed_run_anything }
  # Without password
  it { should be_allowed_run_anything.without_a_password }
  #As a particular user
  it { should be_allowed_run_anything.as('someotheruser') }
  #As a particular user with out a password
  it { should be_allowed_run_anything.as('someotheruser').without_a_password  }
  #As any user
  it { should be_allowed_run_anything.as_anybody }
  #As Any user without  a password
  it { should be_allowed_run_anything.as_anybody.without_password }
end
```
##### be_allowed_to_run_anything
Ensures the user can run a anything
```ruby
describe sudo_user('someuser') do
  it { should be_allowed_run_anything }
  # Without password
  it { should be_allowed_run_anything.without_a_password }
  #As a particular user
  it { should be_allowed_run_anything.as('someotheruser') }
  #As a particular user with out a password
  it { should be_allowed_run_anything.as('someotheruser').without_a_password  }
  #As any user
  it { should be_allowed_run_anything.as_anybody }
  #As Any user without  a password
  it { should be_allowed_run_anything.as_anybody.without_password }
end
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/andrewwardrobe/serverspec-extra-types. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Serverspec::Extra::Types project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/serverspec-extra-types/blob/master/CODE_OF_CONDUCT.md).
