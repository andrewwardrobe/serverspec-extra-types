# frozen_string_literal: true

require 'spec_helper'
SimpleCov.command_name 'serverspec:unix_pam'

context 'PAM' do
  # The container for this is started up by serverspec_launcher see properties file in  project root
  describe unix_pam('su') do
    it { should exist }
    it { should have_auth 'pam_rootok.so'}
    it { should have_auth 'pam_rootok.so', 'sufficient' }
    it { should have_auth('pam_rootok.so').sufficient }
    it { should have_auth('pam_rootok.so').with_flag('sufficient') }
    it { should have_auth('pam_rootok.so').with_control('sufficient') }
    it { should have_auth('pam_rootok.so').with_control_flag('sufficient') }

    it { should have_session('pam_env.so').required }
    it { should have_session('pam_env.so').with_arg('readenv=1') }
    it { should_not have_session('pam_env.so').with_arg('readenv=6') }
    it { should have_session('pam_env.so').with_argument('readenv=1') }
    it { should have_session('pam_env.so').with_argument('readenv=1').required }
    it { should have_session('pam_env.so').with_args(['readenv=1', 'envfile=/etc/default/locale']) }
    it { should have_include 'common-account'}
    it { should include 'common-account'}
    #it { should have_}
  end

  describe unix_pam('common-password') do
    it { should exist }
    it { should have_password('pam_deny.so') }
    it { should have_password('pam_unix.so').with_control("[success=1 default=ignore]") }
  end

  describe unix_pam('common-account') do
    it { should exist }
    it { should have_account('pam_deny.so').requisite }
    it { should have_account('pam_permit.so').required }
    it { should have_account('pam_unix.so').with_control("[success=1 new_authtok_reqd=done default=ignore]") }
  end
end