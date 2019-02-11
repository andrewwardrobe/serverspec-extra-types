require 'spec_helper'
require 'base64'

RSpec.context 'Docker Secret' do
  include SwarmHelper
  before(:all) do
    attach_swarm
    create_secret name: 'secret.key', data: Base64.encode64('My Secret Data'), labels: { "some.label.key": "value"}
  end

  # Todo: Documentation for this
  describe docker_secret('secret.key') do
    it { should exist }
    it { should have_name 'secret.key' }
    it { should be_labelled('some.label.key') }
    it { should be_labelled('some.label.key').with_value('value') }
  end

  after(:all) do
    #delete_config
    detach_swarm
  end
end
