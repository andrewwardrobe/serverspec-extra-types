# frozen_string_literal: true

require 'spec_helper'
SimpleCov.command_name 'serverspec:sudo_matchers'

RSpec.context "Sudo Matcher Failures" do
  describe 'be_allowed_to_run_anything' do
    matcher_failure name: 'be_allowed_to_run_anything', subject: sudo_user('user5'), description: 'if the user has no sudo privileges'

    matcher_fail_message name: 'be_allowed_to_run_anything.as(\'user1\')',
                         subject: sudo_user('user6'),
                         message: %(expected to be able to run anything as user1 got user5),
                         description: 'list allowed users in error message'

    matcher_fail_message name: 'be_allowed_to_run_anything', subject: sudo_user('user3'),
                         message: %(expected 'ALL' to be in ["/usr/bin/cat /var/log/messages"]),
                         description: 'list runnable command in error message'
  end

  describe "be_allowed_to_run_command" do
    matcher_failure name: "be_allowed_to_run_command('/usr/bin/cat /var/log/messages')",
                    subject: sudo_user('user5'), description: 'if the user has no sudo privileges'

    matcher_fail_message name: "be_allowed_to_run_command('/some/command')",
                         subject: sudo_user('user6'),
                         message: 'expected /some/command to be in ["ALL", "/usr/bin/cat /var/log/messages", '\
                                  '"/usr/bin/cat /var/log/secure"]',
                         description: 'list runnable commands in error message'
  end


end


RSpec.context "Sudo Matcher custom descriptions" do
  describe "be_allowed_to_run_anything" do
    matcher_description name: 'be_allowed_to_run_anything', subject: sudo_user('user1')
    matcher_description name: 'be_allowed_to_run_anything', subject: sudo_user('user6'), chain: "as('user5')"
    matcher_description name: 'be_allowed_to_run_anything', subject: sudo_user('user6'), chain: "as('user6').without_a_password"
    matcher_description name: 'be_allowed_to_run_anything', subject: sudo_user('user1'), chain: 'as_anybody'
    matcher_description name: 'be_allowed_to_run_anything', subject: sudo_user('user1'), chain: 'without_password', chain_description: 'without a password'
    matcher_description name: 'be_allowed_to_run_anything', subject: sudo_user('user1'), chain: 'without_a_password'
    matcher_description name: 'be_allowed_to_run_anything', subject: sudo_user('user1'), chain: 'as_anybody.without_a_password'
  end
end