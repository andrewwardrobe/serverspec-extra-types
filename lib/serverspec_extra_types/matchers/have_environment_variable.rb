# frozen_string_literal: false

RSpec::Matchers.define :have_environment_variable do |regex|
  chain :with_value do |value|
    @value = value
  end

  chain :with_value_from do |from, opts|
    @from = from
    @opts = opts
  end

  match do |actual|
    if @from
      actual.has_environment_variable_from? regex, @from, @opts
    else
      actual.has_environment_variable? regex, @value
    end
  end
  description do
    message = "have an environment variable #{regex}"
    message << %( with a value of "#{@value}") if @value
    message
  end
  failure_message do |actual|
    if !@value
      "expected #{actual.environment_variables} to contain #{regex}"
    else
      "expected #{regex} to have value #{@value}, it was #{actual.environment_variable(regex)}"
    end
  end
end
