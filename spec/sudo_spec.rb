require 'spec_helper'

context "Sudo User matchers" do
  #The container for this is started up by serverspec_launcher see properties file in  project root
  describe sudo_user('user1') do
    it { should exist }
    it { should be_allowed_to_run_anything }
    it { should be_allowed_to_run_anything.as_anybody }
  end

  describe sudo_user('user6') do

    it { should exist }
    it { should be_allowed_to_run_anything.as('user5') }
    it { should be_allowed_to_run_command('/usr/bin/cat /var/log/messages') }
    it { should be_allowed_to_run_command('/usr/bin/cat /var/log/messages').as('user6') }
    it { should be_allowed_to_run_command('/usr/bin/cat /var/log/messages').as('user6').without_password }
    it { should be_allowed_to_run_command('/usr/bin/cat /var/log/secure').as('user6') }
    it { should_not be_allowed_to_run_command('/usr/bin/cat /var/log/secure').as('user6').without_password }
  end


  describe sudo_user('user2') do
    it { should be_allowed_to_run_command('/usr/bin/cat /tmp/logs').as_anybody }
    it { should_not be_allowed_to_run_command('/usr/bin/cat /tmp/logs').as_anybody.without_password }
  end


  describe sudo_user('user5') do
    it { should_not exist }
    it { should have_sudo_disabled }
  end
end