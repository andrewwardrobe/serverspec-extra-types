# frozen_string_literal: true

require 'spec_helper'
require 'docker'

RSpec.context 'Consul' do
  include ConsulHelper


  before(:all) do
    start_consul_container
  end

  describe command('docker ps') do
    it 'puts' do
      puts subject.stdout
      puts subject.stderr
    end
  end

  describe command('curl http://docker:8500/v1/catalog/service/consul') do
    it 'puts' do
      puts subject.stdout
      puts subject.stderr
    end
  end

  describe curl('http://127.0.0.1:8500/v1/catalog/service/consul') do
    it { should be_OK}
  end

  describe consul_service_list do
    it { should have_service 'consul' }
  end

  describe consul_service('consul') do
    it { should have_datacenter 'dc1'}
  end

  describe consul_service('consul') do
    # it { should have_id('7ba9a647-0adb-8c92-b0c9-5b011b3530a8') } #ID will be unique on each launch including as an example
    it { should have_node('consul') }
    it { should have_address('127.0.0.1') }
    it { should have_datacenter('dc1') }
    it { should have_tagged_addresses({"lan"=>"127.0.0.1", "wan"=>"127.0.0.1"}) }
    it { should have_node_meta({"consul-network-segment"=>""}) }
    it { should have_service_kind('') }
    it { should have_service_id('consul') }
    it { should have_service_name('consul') }
    it { should have_service_tags([]) }
    it { should have_service_address('') }
    it { should have_service_weights({"Passing"=>1, "Warning"=>1}) }
    it { should have_service_meta({}) }
    it { should have_service_port(8300) }
    it { should have_service_enable_tag_override(false) }
    it { should have_service_proxy_destination('') }
    it { should have_service_proxy({}) }
    it { should have_service_connect({}) }
    it { should have_create_index(9) }
    it { should have_modify_index(9) }
  end

  describe consul_node_list do
    it { should have_node 'consul' }
  end

  describe consul_node('consul') do
    it { should have_datacenter 'dc1'}
    it { should have_service 'consul'}
  end

  after(:all) do
    stop_consul_container
  end
end
