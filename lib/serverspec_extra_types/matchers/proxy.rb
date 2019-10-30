# frozen_string_literal: true

RSpec::Matchers.define :proxy do |url|
  match do |actual|
    actual.has_proxy? url
  end
  failure_message do |actual|
    "expected to proxy to be #{actual.proxy} was #{url}"
  end
end
