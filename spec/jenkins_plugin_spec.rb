# frozen_string_literal: true

require 'spec_helper'

Rspec.context 'Jenkins Plugin' do
  include JenkinsHelper
  before(:all) do
    start_jenkins_container
    install_jenkins_plugin('ssh-slaves', '1.29.4', 60)
  end

  describe command('docker ps') do
    it '' do
      puts subject.stdout
    end
  end
  describe command('curl -s http://localhost:38080') do
    it '' do
      puts subject.stdout
    end
  end

  describe jenkins_plugin('ssh-slaves') do
    it { should exist }
    it { should have_version '1.29.4' }
    # Supports be_installed from serverspec
    it { should be_installed }
    # and with_version
    it { should be_installed.with_version '1.29.4' }
  end

  after(:all) do
    stop_jenkins_container
  end
end
