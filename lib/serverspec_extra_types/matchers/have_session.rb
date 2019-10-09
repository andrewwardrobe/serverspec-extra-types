# frozen_string_literal: false

RSpec::Matchers.define :have_session do |auth|
  match do |actual|
    actual.has_session? auth, @flag, @args
  end
  description do
    msg = "have session '#{auth}'"
    msg << %( with control flag '#{@flag}') if @flag
    msg << %( with argument '#{@args}') if @args && !@args.is_a?(Array)
    msg << %( with arguments '#{@args}') if @args && @args.is_a?(Array)
    msg
  end
  failure_message do |actual|
    "expected sessions to include #{auth} was #{actual.sessions}"
  end

  chain :with_control do |flag|
    @flag = flag
  end

  chain :with_flag do |flag|
    @flag = flag
  end

  chain :with_control_flag do |flag|
    @flag = flag
  end

  chain :required do
    @flag = 'required'
  end

  chain :requisite do
    @flag = 'requisite'
  end

  chain :sufficient do
    @flag = 'sufficient'
  end

  chain :optional do
    @flag = 'optional'
  end

  chain :with_arg do |arg|
    @args = arg
  end

  chain :with_argument do |arg|
    @args = arg
  end

  chain :with_args do |arg|
    @args = arg
  end

  chain :with_arguments do |arg|
    @args = arg
  end
end


