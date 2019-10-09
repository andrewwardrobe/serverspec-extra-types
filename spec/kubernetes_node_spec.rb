require 'spec_helper'

SimpleCov.command_name 'serverspec:k8s_node'
RSpec.context 'Kubernetes Node' do

  before(:all) do

  end

  describe kubernetes_node('testenv01') do
    # Have to set subject like this as it is not known before the describe starts

    it { should exist }
    it { should have_name 'testenv01'}
    it '' do
      puts subject.inspection.to_yaml
    end
  end

  after(:all) do

  end
end
