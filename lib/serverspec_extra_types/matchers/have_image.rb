# frozen_string_literal: true

require 'rspec/expectations'

RSpec::Matchers.define :have_image do |image|
  match do |actual|
    actual.has_image?(image)
  end
  description do
    "have image #{image}"
  end
  failure_message do |actual|
    "expected image to be #{image} was #{actual.image}"
  end
end
