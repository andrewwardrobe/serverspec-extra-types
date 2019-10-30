require 'spec_helper'

SimpleCov.command_name 'serverspec:k8s_deployment'
RSpec.context 'Kubernetes Deployment' do

  before(:all) do

  end

  describe kubernetes_deployment('jenkins') do
    # Have to set subject like this as it is not known before the describe starts
    it { should exist }
    it { should have_name 'jenkins' }
    it { should have_label 'app' }
    it { should have_label('app').with_value('jenkins') }
    it { should have_container 'jenkins' }
    it '' do
      puts subject.inspection.to_yaml
    end

  end

  describe kubernetes_deployment('jenkins').container('jenkins') do
    it { should have_name 'jenkins' }
    it { should have_image 'jenkins/jenkins:lts' }
    it '' do
      puts subject.inspection.to_yaml
    end

  end

  after(:all) do

  end
end
