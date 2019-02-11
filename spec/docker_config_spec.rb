require 'spec_helper'
require 'base64'

RSpec.context 'Docker Config' do
  include SwarmHelper
  before(:all) do
    attach_swarm
    create_config name: 'test.conf', data: Base64.encode64('Some config data'), labels: { "some.label.key": "value" }
  end

  # Todo: Documentation for this
  describe docker_config('test.conf') do
    it { should exist }
    it { should have_name 'test.conf' }
    it { should have_data 'Some config data' }
    it { should have_data64 'U29tZSBjb25maWcgZGF0YQ=='}
    it { should be_labelled('some.label.key') }
    it { should be_labelled('some.label.key').with_value('value') }
  end

  after(:all) do
    #delete_config
    detach_swarm
  end
end
