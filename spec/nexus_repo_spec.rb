require 'spec_helper'

SimpleCov.command_name 'serverspec:k8s_node'
RSpec.context 'Kubernetes Node' do

  before(:all) do

  end

  describe nexus_repo('npm-group', nexus_root: 'http://192.168.2.6:30081') do
    # Have to set subject like this as it is not known before the describe starts
    it { should exist }
    it { should have_name 'npm-group' }
    it { should be_an_npm_repo }
  end

  after(:all) do

  end
end
