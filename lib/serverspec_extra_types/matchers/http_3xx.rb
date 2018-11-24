# frozen_string_literal: true

RSpec::Matchers.define :respond_with_300 do
  match do |actual|
    actual.response_code == 300
  end
  failure_message do |actual|
    "expected #{actual} to respond with 300 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_MULTIPLE_CHOICES do
  match do |actual|
    actual.response_code == 300
  end
  failure_message do |actual|
    "expected #{actual} to respond with 300 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_multiple_choices do
  match do |actual|
    actual.response_code == 300
  end
  failure_message do |actual|
    "expected #{actual} to respond with 300 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_multiple_choices do
  match do |actual|
    actual.response_code == 300
  end
  failure_message do |actual|
    "expected #{actual} to respond with 300 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_301 do
  match do |actual|
    actual.response_code == 301
  end
  failure_message do |actual|
    "expected #{actual} to respond with 301 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_MOVED_PERMANENTLY do
  match do |actual|
    actual.response_code == 301
  end
  failure_message do |actual|
    "expected #{actual} to respond with 301 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_moved_permanently do
  match do |actual|
    actual.response_code == 301
  end
  failure_message do |actual|
    "expected #{actual} to respond with 301 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_moved_permanently do
  match do |actual|
    actual.response_code == 301
  end
  failure_message do |actual|
    "expected #{actual} to respond with 301 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_302 do
  match do |actual|
    actual.response_code == 302
  end
  failure_message do |actual|
    "expected #{actual} to respond with 302 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_FOUND do
  match do |actual|
    actual.response_code == 302
  end
  failure_message do |actual|
    "expected #{actual} to respond with 302 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_found do
  match do |actual|
    actual.response_code == 302
  end
  failure_message do |actual|
    "expected #{actual} to respond with 302 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_found do
  match do |actual|
    actual.response_code == 302
  end
  failure_message do |actual|
    "expected #{actual} to respond with 302 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_303 do
  match do |actual|
    actual.response_code == 303
  end
  failure_message do |actual|
    "expected #{actual} to respond with 303 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_SEE_OTHER do
  match do |actual|
    actual.response_code == 303
  end
  failure_message do |actual|
    "expected #{actual} to respond with 303 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_see_other do
  match do |actual|
    actual.response_code == 303
  end
  failure_message do |actual|
    "expected #{actual} to respond with 303 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_see_other do
  match do |actual|
    actual.response_code == 303
  end
  failure_message do |actual|
    "expected #{actual} to respond with 303 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_304 do
  match do |actual|
    actual.response_code == 304
  end
  failure_message do |actual|
    "expected #{actual} to respond with 304 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_NOT_MODIFIED do
  match do |actual|
    actual.response_code == 304
  end
  failure_message do |actual|
    "expected #{actual} to respond with 304 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_not_modified do
  match do |actual|
    actual.response_code == 304
  end
  failure_message do |actual|
    "expected #{actual} to respond with 304 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_not_modified do
  match do |actual|
    actual.response_code == 304
  end
  failure_message do |actual|
    "expected #{actual} to respond with 304 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_305 do
  match do |actual|
    actual.response_code == 305
  end
  failure_message do |actual|
    "expected #{actual} to respond with 305 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_USE_PROXY do
  match do |actual|
    actual.response_code == 305
  end
  failure_message do |actual|
    "expected #{actual} to respond with 305 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_use_proxy do
  match do |actual|
    actual.response_code == 305
  end
  failure_message do |actual|
    "expected #{actual} to respond with 305 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_use_proxy do
  match do |actual|
    actual.response_code == 305
  end
  failure_message do |actual|
    "expected #{actual} to respond with 305 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_307 do
  match do |actual|
    actual.response_code == 307
  end
  failure_message do |actual|
    "expected #{actual} to respond with 307 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_TEMPORARY_REDIRECT do
  match do |actual|
    actual.response_code == 307
  end
  failure_message do |actual|
    "expected #{actual} to respond with 307 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_temporary_redirect do
  match do |actual|
    actual.response_code == 307
  end
  failure_message do |actual|
    "expected #{actual} to respond with 307 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_temporary_redirect do
  match do |actual|
    actual.response_code == 307
  end
  failure_message do |actual|
    "expected #{actual} to respond with 307 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_308 do
  match do |actual|
    actual.response_code == 308
  end
  failure_message do |actual|
    "expected #{actual} to respond with 308 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_PERMANENT_REDIRECT do
  match do |actual|
    actual.response_code == 308
  end
  failure_message do |actual|
    "expected #{actual} to respond with 308 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_permanent_redirect do
  match do |actual|
    actual.response_code == 308
  end
  failure_message do |actual|
    "expected #{actual} to respond with 308 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_permanent_redirect do
  match do |actual|
    actual.response_code == 308
  end
  failure_message do |actual|
    "expected #{actual} to respond with 308 was #{actual.response_code}"
  end
end
