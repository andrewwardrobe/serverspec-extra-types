# frozen_string_literal: true

require 'spec_helper'


RSpec.context 'Docker Service' do
  include SwarmHelper
  before(:all) do
    attach_swarm
  end

  describe 'Docker Node test_node' do
    # Have to set subject like this as it is not known before the describe starts
    let(:subject) { docker_node(`docker node ls --format '{{ .Hostname }}'`.chomp) }
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
