# frozen_string_literal: true

RSpec::Matchers.define :respond_with_200 do
  match do |actual|
    actual.response_code == 200
  end
  failure_message do |actual|
    "expected #{actual} to respond with 200 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_OK do
  match do |actual|
    actual.response_code == 200
  end
  failure_message do |actual|
    "expected #{actual} to respond with 200 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_ok do
  match do |actual|
    actual.response_code == 200
  end
  failure_message do |actual|
    "expected #{actual} to respond with 200 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_ok do
  match do |actual|
    actual.response_code == 200
  end
  failure_message do |actual|
    "expected #{actual} to respond with 200 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_201 do
  match do |actual|
    actual.response_code == 201
  end
  failure_message do |actual|
    "expected #{actual} to respond with 201 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_CREATED do
  match do |actual|
    actual.response_code == 201
  end
  failure_message do |actual|
    "expected #{actual} to respond with 201 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_created do
  match do |actual|
    actual.response_code == 201
  end
  failure_message do |actual|
    "expected #{actual} to respond with 201 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_created do
  match do |actual|
    actual.response_code == 201
  end
  failure_message do |actual|
    "expected #{actual} to respond with 201 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_202 do
  match do |actual|
    actual.response_code == 202
  end
  failure_message do |actual|
    "expected #{actual} to respond with 202 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_ACCEPTED do
  match do |actual|
    actual.response_code == 202
  end
  failure_message do |actual|
    "expected #{actual} to respond with 202 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_accepted do
  match do |actual|
    actual.response_code == 202
  end
  failure_message do |actual|
    "expected #{actual} to respond with 202 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_accepted do
  match do |actual|
    actual.response_code == 202
  end
  failure_message do |actual|
    "expected #{actual} to respond with 202 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_203 do
  match do |actual|
    actual.response_code == 203
  end
  failure_message do |actual|
    "expected #{actual} to respond with 203 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_NON_AUTHORITATIVE_INFORMATION do
  match do |actual|
    actual.response_code == 203
  end
  failure_message do |actual|
    "expected #{actual} to respond with 203 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_non_authoritative_information do
  match do |actual|
    actual.response_code == 203
  end
  failure_message do |actual|
    "expected #{actual} to respond with 203 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_non_authoritative_information do
  match do |actual|
    actual.response_code == 203
  end
  failure_message do |actual|
    "expected #{actual} to respond with 203 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_204 do
  match do |actual|
    actual.response_code == 204
  end
  failure_message do |actual|
    "expected #{actual} to respond with 204 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_NO_CONTENT do
  match do |actual|
    actual.response_code == 204
  end
  failure_message do |actual|
    "expected #{actual} to respond with 204 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_no_content do
  match do |actual|
    actual.response_code == 204
  end
  failure_message do |actual|
    "expected #{actual} to respond with 204 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_no_content do
  match do |actual|
    actual.response_code == 204
  end
  failure_message do |actual|
    "expected #{actual} to respond with 204 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_205 do
  match do |actual|
    actual.response_code == 205
  end
  failure_message do |actual|
    "expected #{actual} to respond with 205 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_RESET_CONTENT do
  match do |actual|
    actual.response_code == 205
  end
  failure_message do |actual|
    "expected #{actual} to respond with 205 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_reset_content do
  match do |actual|
    actual.response_code == 205
  end
  failure_message do |actual|
    "expected #{actual} to respond with 205 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_reset_content do
  match do |actual|
    actual.response_code == 205
  end
  failure_message do |actual|
    "expected #{actual} to respond with 205 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_206 do
  match do |actual|
    actual.response_code == 206
  end
  failure_message do |actual|
    "expected #{actual} to respond with 206 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_PARTIAL_CONTENT do
  match do |actual|
    actual.response_code == 206
  end
  failure_message do |actual|
    "expected #{actual} to respond with 206 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_partial_content do
  match do |actual|
    actual.response_code == 206
  end
  failure_message do |actual|
    "expected #{actual} to respond with 206 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_partial_content do
  match do |actual|
    actual.response_code == 206
  end
  failure_message do |actual|
    "expected #{actual} to respond with 206 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_207 do
  match do |actual|
    actual.response_code == 207
  end
  failure_message do |actual|
    "expected #{actual} to respond with 207 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_MULTI_STATUS do
  match do |actual|
    actual.response_code == 207
  end
  failure_message do |actual|
    "expected #{actual} to respond with 207 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_multi_status do
  match do |actual|
    actual.response_code == 207
  end
  failure_message do |actual|
    "expected #{actual} to respond with 207 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_multi_status do
  match do |actual|
    actual.response_code == 207
  end
  failure_message do |actual|
    "expected #{actual} to respond with 207 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_208 do
  match do |actual|
    actual.response_code == 208
  end
  failure_message do |actual|
    "expected #{actual} to respond with 208 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_ALREADY_REPORTED do
  match do |actual|
    actual.response_code == 208
  end
  failure_message do |actual|
    "expected #{actual} to respond with 208 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_already_reported do
  match do |actual|
    actual.response_code == 208
  end
  failure_message do |actual|
    "expected #{actual} to respond with 208 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_already_reported do
  match do |actual|
    actual.response_code == 208
  end
  failure_message do |actual|
    "expected #{actual} to respond with 208 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_226 do
  match do |actual|
    actual.response_code == 226
  end
  failure_message do |actual|
    "expected #{actual} to respond with 226 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_IM_USED do
  match do |actual|
    actual.response_code == 226
  end
  failure_message do |actual|
    "expected #{actual} to respond with 226 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_im_used do
  match do |actual|
    actual.response_code == 226
  end
  failure_message do |actual|
    "expected #{actual} to respond with 226 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_im_used do
  match do |actual|
    actual.response_code == 226
  end
  failure_message do |actual|
    "expected #{actual} to respond with 226 was #{actual.response_code}"
  end
end
