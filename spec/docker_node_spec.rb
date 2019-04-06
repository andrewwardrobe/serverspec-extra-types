# frozen_string_literal: true

require 'spec_helper'

RSpec.context 'Docker Service' do
  include SwarmHelper
  before(:all) do
    attach_swarm
  end

  describe docker_node(`hostname -f`.chomp) do
    it { should exist }
    it { should be_a_manager }
    it { should be_active }
    it { should have_engine_version engine_version }
    it 'test for draining mode'
    it 'test for pause mode'
  end

  after(:all) do
    detach_swarm
  end
end
