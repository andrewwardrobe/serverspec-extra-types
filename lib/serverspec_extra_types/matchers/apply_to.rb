# frozen_string_literal: true

RSpec::Matchers.define :apply_to do |arg|
  match do |actual|
    actual.apply_to?(arg)
  end
end
