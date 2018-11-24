# frozen_string_literal: true

RSpec::Matchers.define :respond_with_500 do
  match do |actual|
    actual.response_code == 500
  end
  failure_message do |actual|
    "expected #{actual} to respond with 500 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_INTERNAL_SERVER_ERROR do
  match do |actual|
    actual.response_code == 500
  end
  failure_message do |actual|
    "expected #{actual} to respond with 500 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_internal_server_error do
  match do |actual|
    actual.response_code == 500
  end
  failure_message do |actual|
    "expected #{actual} to respond with 500 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_internal_server_error do
  match do |actual|
    actual.response_code == 500
  end
  failure_message do |actual|
    "expected #{actual} to respond with 500 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_501 do
  match do |actual|
    actual.response_code == 501
  end
  failure_message do |actual|
    "expected #{actual} to respond with 501 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_NOT_IMPLEMENTED do
  match do |actual|
    actual.response_code == 501
  end
  failure_message do |actual|
    "expected #{actual} to respond with 501 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_not_implemented do
  match do |actual|
    actual.response_code == 501
  end
  failure_message do |actual|
    "expected #{actual} to respond with 501 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_not_implemented do
  match do |actual|
    actual.response_code == 501
  end
  failure_message do |actual|
    "expected #{actual} to respond with 501 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_502 do
  match do |actual|
    actual.response_code == 502
  end
  failure_message do |actual|
    "expected #{actual} to respond with 502 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_BAD_GATEWAY do
  match do |actual|
    actual.response_code == 502
  end
  failure_message do |actual|
    "expected #{actual} to respond with 502 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_bad_gateway do
  match do |actual|
    actual.response_code == 502
  end
  failure_message do |actual|
    "expected #{actual} to respond with 502 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_bad_gateway do
  match do |actual|
    actual.response_code == 502
  end
  failure_message do |actual|
    "expected #{actual} to respond with 502 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_503 do
  match do |actual|
    actual.response_code == 503
  end
  failure_message do |actual|
    "expected #{actual} to respond with 503 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_SERVICE_UNAVAILABLE do
  match do |actual|
    actual.response_code == 503
  end
  failure_message do |actual|
    "expected #{actual} to respond with 503 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_service_unavailable do
  match do |actual|
    actual.response_code == 503
  end
  failure_message do |actual|
    "expected #{actual} to respond with 503 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_service_unavailable do
  match do |actual|
    actual.response_code == 503
  end
  failure_message do |actual|
    "expected #{actual} to respond with 503 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_504 do
  match do |actual|
    actual.response_code == 504
  end
  failure_message do |actual|
    "expected #{actual} to respond with 504 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_GATEWAY_TIMEOUT do
  match do |actual|
    actual.response_code == 504
  end
  failure_message do |actual|
    "expected #{actual} to respond with 504 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_gateway_timeout do
  match do |actual|
    actual.response_code == 504
  end
  failure_message do |actual|
    "expected #{actual} to respond with 504 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_gateway_timeout do
  match do |actual|
    actual.response_code == 504
  end
  failure_message do |actual|
    "expected #{actual} to respond with 504 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_505 do
  match do |actual|
    actual.response_code == 505
  end
  failure_message do |actual|
    "expected #{actual} to respond with 505 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_HTTP_VERSION_NOT_SUPPORTED do
  match do |actual|
    actual.response_code == 505
  end
  failure_message do |actual|
    "expected #{actual} to respond with 505 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_http_version_not_supported do
  match do |actual|
    actual.response_code == 505
  end
  failure_message do |actual|
    "expected #{actual} to respond with 505 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_http_version_not_supported do
  match do |actual|
    actual.response_code == 505
  end
  failure_message do |actual|
    "expected #{actual} to respond with 505 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_506 do
  match do |actual|
    actual.response_code == 506
  end
  failure_message do |actual|
    "expected #{actual} to respond with 506 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_VARIANT_ALSO_NEGOTIATES do
  match do |actual|
    actual.response_code == 506
  end
  failure_message do |actual|
    "expected #{actual} to respond with 506 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_variant_also_negotiates do
  match do |actual|
    actual.response_code == 506
  end
  failure_message do |actual|
    "expected #{actual} to respond with 506 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_variant_also_negotiates do
  match do |actual|
    actual.response_code == 506
  end
  failure_message do |actual|
    "expected #{actual} to respond with 506 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_507 do
  match do |actual|
    actual.response_code == 507
  end
  failure_message do |actual|
    "expected #{actual} to respond with 507 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_INSUFFICIENT_STORAGE do
  match do |actual|
    actual.response_code == 507
  end
  failure_message do |actual|
    "expected #{actual} to respond with 507 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_insufficient_storage do
  match do |actual|
    actual.response_code == 507
  end
  failure_message do |actual|
    "expected #{actual} to respond with 507 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_insufficient_storage do
  match do |actual|
    actual.response_code == 507
  end
  failure_message do |actual|
    "expected #{actual} to respond with 507 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_508 do
  match do |actual|
    actual.response_code == 508
  end
  failure_message do |actual|
    "expected #{actual} to respond with 508 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_LOOP_DETECTED do
  match do |actual|
    actual.response_code == 508
  end
  failure_message do |actual|
    "expected #{actual} to respond with 508 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_loop_detected do
  match do |actual|
    actual.response_code == 508
  end
  failure_message do |actual|
    "expected #{actual} to respond with 508 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_loop_detected do
  match do |actual|
    actual.response_code == 508
  end
  failure_message do |actual|
    "expected #{actual} to respond with 508 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_510 do
  match do |actual|
    actual.response_code == 510
  end
  failure_message do |actual|
    "expected #{actual} to respond with 510 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_NOT_EXTENDED do
  match do |actual|
    actual.response_code == 510
  end
  failure_message do |actual|
    "expected #{actual} to respond with 510 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_not_extended do
  match do |actual|
    actual.response_code == 510
  end
  failure_message do |actual|
    "expected #{actual} to respond with 510 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_not_extended do
  match do |actual|
    actual.response_code == 510
  end
  failure_message do |actual|
    "expected #{actual} to respond with 510 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_511 do
  match do |actual|
    actual.response_code == 511
  end
  failure_message do |actual|
    "expected #{actual} to respond with 511 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_NETWORK_AUTHENTICATION_REQUIRED do
  match do |actual|
    actual.response_code == 511
  end
  failure_message do |actual|
    "expected #{actual} to respond with 511 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_network_authentication_required do
  match do |actual|
    actual.response_code == 511
  end
  failure_message do |actual|
    "expected #{actual} to respond with 511 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_network_authentication_required do
  match do |actual|
    actual.response_code == 511
  end
  failure_message do |actual|
    "expected #{actual} to respond with 511 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_599 do
  match do |actual|
    actual.response_code == 599
  end
  failure_message do |actual|
    "expected #{actual} to respond with 599 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_NETWORK_CONNECT_TIMEOUT_ERROR do
  match do |actual|
    actual.response_code == 599
  end
  failure_message do |actual|
    "expected #{actual} to respond with 599 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_network_connect_timeout_error do
  match do |actual|
    actual.response_code == 599
  end
  failure_message do |actual|
    "expected #{actual} to respond with 599 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_network_connect_timeout_error do
  match do |actual|
    actual.response_code == 599
  end
  failure_message do |actual|
    "expected #{actual} to respond with 599 was #{actual.response_code}"
  end
end
