# frozen_string_literal: false

RSpec::Matchers.define :be_allowed_to_run_command do |command|
  chain :as do |user|
    @user = user
  end
  chain :as_anybody do
    @anybody = true
  end
  chain :without_password do
    @checkpw = true
  end
  chain :without_a_password do
    @checkpw = true
  end
  match do |actual|
    if @user
      actual.allowed_to_run_command?(command, @user, @checkpw)
    elsif @anybody
      (actual.allowed_to_run_command?(command, 'ALL', @checkpw) || actual.allowed_to_run_command?(command, 'ALL:ALL', @checkpw))
    else
      actual.allowed_to_run_command?(command, @checkpw)
    end
  end

  failure_message do |actual|
    msg = if @user
            "expected to be able to run #{command} as #{@user} got #{actual.permission(command)[:user]}"
          else
            "expected #{command} to be in #{actual.permissions.map { |x| x[:command] }}"
    end
    msg << %( without a password ) if @checkpw
    msg
  end

  description do
    msg = "be allowed to run #{command}"
    msg << %( as #{@user}) if @user
    msg << %( without a password ) if @checkpw
    msg
  end
end
