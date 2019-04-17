# frozen_string_literal: true

require 'spec_helper'
SimpleCov.command_name 'serverspec:network'
RSpec.context 'Docker Service' do
  include SwarmHelper
  before(:all) do
    attach_swarm
    create_network('test_network')
  end

  describe docker_network('test_network') do
    it { should exist }
    it { should be_attachable }
    it { should be_swarm_scoped }
    it { should have_driver('overlay') }
    it { should be_overlay }
    it { should_not be_internal }
    it { should_not be_ingress }
    it { should_not be_IPv6_enabled }
  end

  after(:all) do
    delete_networks
    detach_swarm
  end
end
