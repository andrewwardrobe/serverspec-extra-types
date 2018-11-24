# frozen_string_literal: true

RSpec::Matchers.define :be_active do
  match(&:active?)
  failure_message do |actual|
    "expected '#{actual.availability}' to be active"
  end
  description do
    'be active'
  end
end
