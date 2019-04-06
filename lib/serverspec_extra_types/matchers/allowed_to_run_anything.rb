# frozen_string_literal: true

RSpec::Matchers.define :be_allowed_to_run_anything do
  chain :as do |user|
    @user = user
  end
  chain :as_anybody do
    @user = 'ALL'
  end
  chain :without_password do
    @checkpw = true
  end
  chain :without_a_password do
    @checkpw = true
  end
  match do |actual|
    if @user
      actual.allowed_to_run_command?('ALL', @user, @checkpw)
    else
      actual.allowed_to_run_command?('ALL', @checkpw)
    end
  end

  failure_message do |actual|
    msg = if @user
            "expected to be able to run anything as #{@user} got #{actual.permission('ALL')[:user]}"
          else
            "expected anything} to be in #{actual.permissions.map { |x| x[:command] }}"
    end
    msg << %( without a password ) if @checkpw
    msg
  end

  description do
    msg = 'be allowed to run anything'
    msg << %( as #{@user}) if @user
    msg << %( without a password ) if @checkpw
    msg
  end
end
