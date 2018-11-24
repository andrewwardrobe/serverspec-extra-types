# frozen_string_literal: true

RSpec::Matchers.define :respond_with_100 do
  match do |actual|
    actual.response_code == 100
  end
  failure_message do |actual|
    "expected #{actual} to respond with 100 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_CONTINUE do
  match do |actual|
    actual.response_code == 100
  end
  failure_message do |actual|
    "expected #{actual} to respond with 100 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_continue do
  match do |actual|
    actual.response_code == 100
  end
  failure_message do |actual|
    "expected #{actual} to respond with 100 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_continue do
  match do |actual|
    actual.response_code == 100
  end
  failure_message do |actual|
    "expected #{actual} to respond with 100 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_101 do
  match do |actual|
    actual.response_code == 101
  end
  failure_message do |actual|
    "expected #{actual} to respond with 101 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_SWITCHING_PROTOCOLS do
  match do |actual|
    actual.response_code == 101
  end
  failure_message do |actual|
    "expected #{actual} to respond with 101 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_switching_protocols do
  match do |actual|
    actual.response_code == 101
  end
  failure_message do |actual|
    "expected #{actual} to respond with 101 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_switching_protocols do
  match do |actual|
    actual.response_code == 101
  end
  failure_message do |actual|
    "expected #{actual} to respond with 101 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_102 do
  match do |actual|
    actual.response_code == 102
  end
  failure_message do |actual|
    "expected #{actual} to respond with 102 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_PROCESSING do
  match do |actual|
    actual.response_code == 102
  end
  failure_message do |actual|
    "expected #{actual} to respond with 102 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_processing do
  match do |actual|
    actual.response_code == 102
  end
  failure_message do |actual|
    "expected #{actual} to respond with 102 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_processing do
  match do |actual|
    actual.response_code == 102
  end
  failure_message do |actual|
    "expected #{actual} to respond with 102 was #{actual.response_code}"
  end
end
