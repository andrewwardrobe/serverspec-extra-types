# frozen_string_literal: true

require 'spec_helper'
SimpleCov.command_name 'serverspec:nfs_export'


context 'NFS Exports' do
  # The container for this is started up by serverspec_launcher see properties file in  project root
  describe nfs_export('/var/nfsroot') do
    it { should exist }
    it { should have_host('192.168.1.0/16') }
    it { should have_host('192.168.1.0/16').with_option('root_squash') }
    it { should have_host('192.168.1.0/16').with_options('root_squash.rw') }
    it { should have_host('192.168.1.0/16').with_options('rw root_squash subtree_check') }
  end
end
