# ServerspecExtraTypes

serverspec-extra-types is a set of addition resource types and matchers for ServerSpec, providing types for technologies such as 
docker swarm, consul, and rabbitmq.

All checks run on the target, which can be useful when executing via a bastion host


## Requirements
* rabbitmq and cunsul checks requires curl to be installed on the target

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

### docker_container
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

#####be_running
Check if a container is runnig (from serverspec)
```ruby
describe docker_container('focused_curie') do
  it { should be_running }
end
```
#####have_image
Check if container is running a spefic image
```ruby
describe docker_container('focused_currie') do
  it { should have_image('jenkins/jenkins:lts') }
end
```
#####have_hostname / has_host_name
Check container hostname
```ruby
describe docker_container('focused_currie') do
  it { should have_hostname('container1') }
end
```
#####have_domainname / have_domain_name
Check container domain name
```ruby
describe docker_container('focused_currie') do
  it { should have_domainname('leek.com') }
end
```
#####have_user / run_as_user
Check if container is running as the specified user
```ruby
describe docker_container('focused_currie') do
  it { should run_as_user('jenkins') }
end
```

#####map_port
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
#####have_volume
Check the for a volume (from serverspec)
```ruby
describe docker_container('focused_currie') do
  it {  it { should have_volume('/tmp','/data') }}
end
```
#####have_mount
Check the for mounted volume
```ruby
describe docker_container('focused_currie') do
  it { should have_mount('/var/run/docker.sock', '/var/run/docker.sock') }
end
```
#####have_restart_policy
Check the containers restart policy
```ruby
describe docker_container('focused_currie') do
  it { should have_restart_policy('always') }
end
```
#####have_restart_limit
Check the containers restart limit
```ruby
describe docker_container('focused_currie') do
  it { should have_restart_limit(1) }
end
```
#####have_host
Check for additional /etc/hosts entries
```ruby
describe docker_container('focused_currie') do
  it { should have_host('8.8.8.8 dns') }
end
```
#####have_environment_variable
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

#####be_privileged
Check if the container runs in privileged mode
```ruby
describe docker_container('focused_currie') do
  it { should be_privileged }
end
```

#####publishes_all_ports
Check if the container publishes all exposed ports
```ruby
describe docker_container('focused_currie') do
  it { should publishes_all_ports }
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
