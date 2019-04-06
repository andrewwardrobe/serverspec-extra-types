# frozen_string_literal: true

require 'spec_helper'

RSpec.context 'Docker Container' do
  include ConsulHelper

  before(:all) do
    start_consul_container('name' => 'consul',
                           'HostConfig' => {
                             'RestartPolicy' => { 'Name' => 'always', 'MaximunRetryCount' => 0 },
                             'ExtraHosts' => ['leek:169.254.1.1']
                           })
  end
  after(:all) do
    stop_consul_container
  end

  describe docker_container('consul') do
    it { should exist }
    it { should be_running }
    it { should have_image('consul:latest') }
    it { should run_as_user '' }
    it { should map_port('8500', '8500') }
    it { should have_restart_policy('always') }
    it { should have_restart_limit(0) }
    it { should have_hostname('consul') }
    it { should have_domainname('') }
    it { should_not be_privileged }
    it { should_not publish_all_ports }
    it { should have_host('169.254.1.1 leek') }

    it { should have_environment_variable 'CONSUL_VERSION' }
    it { should have_environment_variable('HASHICORP_RELEASES').with_value('https://releases.hashicorp.com') }
    # TODO: Label Matcher
  end
end
