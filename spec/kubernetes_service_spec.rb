require 'spec_helper'

SimpleCov.command_name 'serverspec:k8s_node'
RSpec.context 'Kubernetes Node' do

  before(:all) do

  end

  describe kubernetes_service('openldap') do
    # Have to set subject like this as it is not known before the describe starts
    it { should exist }
    it { should have_name 'openldap' }
    it { should have_cluster_ip('10.100.67.172')}
    it { should have_type 'ClusterIP' }
    it { should be_cluster_ip }
    it { should have_port 389}

  end

  after(:all) do

  end
end
