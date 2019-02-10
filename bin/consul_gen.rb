#!/usr/bin/env ruby

require 'rest-client'
require 'docker'
require 'multi_json'
require 'yaml'

class String
  def underscore
    self.gsub(/::/, '/').
        gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
        gsub(/([a-z\d])([A-Z])/,'\1_\2').
        tr("-", "_").
        downcase
  end
end

def quote(data, type)
  if type == 'String'
    "'#{data}'"
  else
    "#{data}"
  end
end

docker_container = Docker::Container.create(
    'Image' => 'consul:latest',
    'HostConfig' => {
        'PortBindings' => {
            '8500/tcp' => [{ 'HostPort' => '8500' }]
        }
    },
    'Hostname' => 'consul'
)
docker_container.start
container_id = docker_container.id[0..10]
sleep(10)

FileUtils.mkpath './tmp' unless Dir.exists?('./tmp')



def generate_methods(type_name, data)
  puts data.to_yaml
  File.open("./tmp/#{type_name}_methods", 'w') do |file|
    data.keys.each do |key|
      type = data[key].class
      file.write "# Key Type: #{type}\n"
      file.write "def #{key.underscore}\n"
      file.write "  inspection['#{key}']\n"
      file.write "end\n\n"
      if type != 'Hash' || type != 'Array'
        file.write "def has_#{key.underscore}?(#{key.underscore})\n"
        file.write "  self.#{key.underscore} == #{key.underscore}\n"
        file.write "end\n\n"
      end
    end
  end
end

def generate_tests(type_name, data, type_params)
  File.open("./tmp/#{type_name}_tests", 'w') do |file|
    file.write "describe #{type_name}(#{type_params ? quote(type_params, type_params.class.to_s) : ''}) do\n"
    data.keys.each do |key|
      type = data[key].class
      file.write "  it { should have_#{key.underscore}(#{quote(data[key], type.to_s)}) }\n"
    end
    file.write "end\n\n"
  end
end

def generate_docs(type_name, data, type_params)
  File.open("./tmp/#{type_name}_docs", 'w') do |file|

    data.keys.each do |key|
      type = data[key].class
      file.write "#### have_#{key.underscore}\n"
      file.write "```ruby\n"
      file.write "describe #{type_name}(#{type_params ? quote(type_params, type_params.class.to_s) : ''}) do\n"
      file.write "  it { should have_#{key.underscore}(#{quote(data[key], type.to_s)}) }\n"
      file.write "end\n"
      file.write "```\n\n"
    end
    file.write "end\n\n"
  end
end

types = [{
    name: 'consul_service',
    url: 'http://localhost:8500/v1/catalog/service/consul',
    type_params: 'consul',
},{
    name: 'consul_node',
    url: 'http://localhost:8500/v1/catalog/node/consul',
    type_params: 'consul'
}]


types.each do |type|
  resp = RestClient.get type[:url]
  out = MultiJson.load(resp.body)
  if out.is_a?(Array)
    data = out[0]
  else
    data = out
  end
  generate_methods(type[:name], data)
  generate_docs(type[:name], data, type[:type_params])
  generate_tests(type[:name], data, type[:type_params])
end

docker_container.stop
docker_container.delete


