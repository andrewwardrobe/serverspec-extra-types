# frozen_string_literal: true

require 'spec_helper'
SimpleCov.command_name 'serverspec:jenkins_plugin'
RSpec.context 'Jenkins Plugin' do
  include JenkinsHelper
  before(:all) do
    start_jenkins_container
    install_jenkins_plugin('ssh-slaves', '1.30.0', 60)
  end

  describe jenkins_plugin('ssh-slaves') do
    it { should exist }
    it { should have_version '1.30.0' }
    # Supports be_installed from serverspec
    it { should be_installed }
    # and with_version
    it { should be_installed.with_version '1.30.0' }
  end

  after(:all) do
    stop_jenkins_container
  end
end
