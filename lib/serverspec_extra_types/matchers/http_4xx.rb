# frozen_string_literal: true

RSpec::Matchers.define :respond_with_400 do
  match do |actual|
    actual.response_code == 400
  end
  failure_message do |actual|
    "expected #{actual} to respond with 400 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_BAD_REQUEST do
  match do |actual|
    actual.response_code == 400
  end
  failure_message do |actual|
    "expected #{actual} to respond with 400 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_bad_request do
  match do |actual|
    actual.response_code == 400
  end
  failure_message do |actual|
    "expected #{actual} to respond with 400 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_bad_request do
  match do |actual|
    actual.response_code == 400
  end
  failure_message do |actual|
    "expected #{actual} to respond with 400 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_401 do
  match do |actual|
    actual.response_code == 401
  end
  failure_message do |actual|
    "expected #{actual} to respond with 401 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_UNAUTHORIZED do
  match do |actual|
    actual.response_code == 401
  end
  failure_message do |actual|
    "expected #{actual} to respond with 401 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_unauthorized do
  match do |actual|
    actual.response_code == 401
  end
  failure_message do |actual|
    "expected #{actual} to respond with 401 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_unauthorized do
  match do |actual|
    actual.response_code == 401
  end
  failure_message do |actual|
    "expected #{actual} to respond with 401 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_402 do
  match do |actual|
    actual.response_code == 402
  end
  failure_message do |actual|
    "expected #{actual} to respond with 402 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_PAYMENT_REQUIRED do
  match do |actual|
    actual.response_code == 402
  end
  failure_message do |actual|
    "expected #{actual} to respond with 402 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_payment_required do
  match do |actual|
    actual.response_code == 402
  end
  failure_message do |actual|
    "expected #{actual} to respond with 402 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_payment_required do
  match do |actual|
    actual.response_code == 402
  end
  failure_message do |actual|
    "expected #{actual} to respond with 402 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_403 do
  match do |actual|
    actual.response_code == 403
  end
  failure_message do |actual|
    "expected #{actual} to respond with 403 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_FORBIDDEN do
  match do |actual|
    actual.response_code == 403
  end
  failure_message do |actual|
    "expected #{actual} to respond with 403 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_forbidden do
  match do |actual|
    actual.response_code == 403
  end
  failure_message do |actual|
    "expected #{actual} to respond with 403 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_forbidden do
  match do |actual|
    actual.response_code == 403
  end
  failure_message do |actual|
    "expected #{actual} to respond with 403 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_404 do
  match do |actual|
    actual.response_code == 404
  end
  failure_message do |actual|
    "expected #{actual} to respond with 404 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_NOT_FOUND do
  match do |actual|
    actual.response_code == 404
  end
  failure_message do |actual|
    "expected #{actual} to respond with 404 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_not_found do
  match do |actual|
    actual.response_code == 404
  end
  failure_message do |actual|
    "expected #{actual} to respond with 404 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_not_found do
  match do |actual|
    actual.response_code == 404
  end
  failure_message do |actual|
    "expected #{actual} to respond with 404 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_405 do
  match do |actual|
    actual.response_code == 405
  end
  failure_message do |actual|
    "expected #{actual} to respond with 405 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_METHOD_NOT_ALLOWED do
  match do |actual|
    actual.response_code == 405
  end
  failure_message do |actual|
    "expected #{actual} to respond with 405 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_method_not_allowed do
  match do |actual|
    actual.response_code == 405
  end
  failure_message do |actual|
    "expected #{actual} to respond with 405 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_method_not_allowed do
  match do |actual|
    actual.response_code == 405
  end
  failure_message do |actual|
    "expected #{actual} to respond with 405 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_406 do
  match do |actual|
    actual.response_code == 406
  end
  failure_message do |actual|
    "expected #{actual} to respond with 406 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_NOT_ACCEPTABLE do
  match do |actual|
    actual.response_code == 406
  end
  failure_message do |actual|
    "expected #{actual} to respond with 406 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_not_acceptable do
  match do |actual|
    actual.response_code == 406
  end
  failure_message do |actual|
    "expected #{actual} to respond with 406 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_not_acceptable do
  match do |actual|
    actual.response_code == 406
  end
  failure_message do |actual|
    "expected #{actual} to respond with 406 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_407 do
  match do |actual|
    actual.response_code == 407
  end
  failure_message do |actual|
    "expected #{actual} to respond with 407 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_PROXY_AUTHENTICATION_REQUIRED do
  match do |actual|
    actual.response_code == 407
  end
  failure_message do |actual|
    "expected #{actual} to respond with 407 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_proxy_authentication_required do
  match do |actual|
    actual.response_code == 407
  end
  failure_message do |actual|
    "expected #{actual} to respond with 407 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_proxy_authentication_required do
  match do |actual|
    actual.response_code == 407
  end
  failure_message do |actual|
    "expected #{actual} to respond with 407 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_408 do
  match do |actual|
    actual.response_code == 408
  end
  failure_message do |actual|
    "expected #{actual} to respond with 408 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_REQUEST_TIMEOUT do
  match do |actual|
    actual.response_code == 408
  end
  failure_message do |actual|
    "expected #{actual} to respond with 408 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_request_timeout do
  match do |actual|
    actual.response_code == 408
  end
  failure_message do |actual|
    "expected #{actual} to respond with 408 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_request_timeout do
  match do |actual|
    actual.response_code == 408
  end
  failure_message do |actual|
    "expected #{actual} to respond with 408 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_409 do
  match do |actual|
    actual.response_code == 409
  end
  failure_message do |actual|
    "expected #{actual} to respond with 409 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_CONFLICT do
  match do |actual|
    actual.response_code == 409
  end
  failure_message do |actual|
    "expected #{actual} to respond with 409 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_conflict do
  match do |actual|
    actual.response_code == 409
  end
  failure_message do |actual|
    "expected #{actual} to respond with 409 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_conflict do
  match do |actual|
    actual.response_code == 409
  end
  failure_message do |actual|
    "expected #{actual} to respond with 409 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_410 do
  match do |actual|
    actual.response_code == 410
  end
  failure_message do |actual|
    "expected #{actual} to respond with 410 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_GONE do
  match do |actual|
    actual.response_code == 410
  end
  failure_message do |actual|
    "expected #{actual} to respond with 410 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_gone do
  match do |actual|
    actual.response_code == 410
  end
  failure_message do |actual|
    "expected #{actual} to respond with 410 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_gone do
  match do |actual|
    actual.response_code == 410
  end
  failure_message do |actual|
    "expected #{actual} to respond with 410 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_411 do
  match do |actual|
    actual.response_code == 411
  end
  failure_message do |actual|
    "expected #{actual} to respond with 411 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_LENGTH_REQUIRED do
  match do |actual|
    actual.response_code == 411
  end
  failure_message do |actual|
    "expected #{actual} to respond with 411 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_length_required do
  match do |actual|
    actual.response_code == 411
  end
  failure_message do |actual|
    "expected #{actual} to respond with 411 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_length_required do
  match do |actual|
    actual.response_code == 411
  end
  failure_message do |actual|
    "expected #{actual} to respond with 411 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_412 do
  match do |actual|
    actual.response_code == 412
  end
  failure_message do |actual|
    "expected #{actual} to respond with 412 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_PRECONDITION_FAILED do
  match do |actual|
    actual.response_code == 412
  end
  failure_message do |actual|
    "expected #{actual} to respond with 412 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_precondition_failed do
  match do |actual|
    actual.response_code == 412
  end
  failure_message do |actual|
    "expected #{actual} to respond with 412 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_precondition_failed do
  match do |actual|
    actual.response_code == 412
  end
  failure_message do |actual|
    "expected #{actual} to respond with 412 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_413 do
  match do |actual|
    actual.response_code == 413
  end
  failure_message do |actual|
    "expected #{actual} to respond with 413 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_PAYLOAD_TOO_LARGE do
  match do |actual|
    actual.response_code == 413
  end
  failure_message do |actual|
    "expected #{actual} to respond with 413 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_payload_too_large do
  match do |actual|
    actual.response_code == 413
  end
  failure_message do |actual|
    "expected #{actual} to respond with 413 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_payload_too_large do
  match do |actual|
    actual.response_code == 413
  end
  failure_message do |actual|
    "expected #{actual} to respond with 413 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_414 do
  match do |actual|
    actual.response_code == 414
  end
  failure_message do |actual|
    "expected #{actual} to respond with 414 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_REQUEST_URI_TOO_LONG do
  match do |actual|
    actual.response_code == 414
  end
  failure_message do |actual|
    "expected #{actual} to respond with 414 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_request_uri_too_long do
  match do |actual|
    actual.response_code == 414
  end
  failure_message do |actual|
    "expected #{actual} to respond with 414 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_request_uri_too_long do
  match do |actual|
    actual.response_code == 414
  end
  failure_message do |actual|
    "expected #{actual} to respond with 414 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_415 do
  match do |actual|
    actual.response_code == 415
  end
  failure_message do |actual|
    "expected #{actual} to respond with 415 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_UNSUPPORTED_MEDIA_TYPE do
  match do |actual|
    actual.response_code == 415
  end
  failure_message do |actual|
    "expected #{actual} to respond with 415 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_unsupported_media_type do
  match do |actual|
    actual.response_code == 415
  end
  failure_message do |actual|
    "expected #{actual} to respond with 415 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_unsupported_media_type do
  match do |actual|
    actual.response_code == 415
  end
  failure_message do |actual|
    "expected #{actual} to respond with 415 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_416 do
  match do |actual|
    actual.response_code == 416
  end
  failure_message do |actual|
    "expected #{actual} to respond with 416 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_REQUESTED_RANGE_NOT_SATISFIABLE do
  match do |actual|
    actual.response_code == 416
  end
  failure_message do |actual|
    "expected #{actual} to respond with 416 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_requested_range_not_satisfiable do
  match do |actual|
    actual.response_code == 416
  end
  failure_message do |actual|
    "expected #{actual} to respond with 416 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_requested_range_not_satisfiable do
  match do |actual|
    actual.response_code == 416
  end
  failure_message do |actual|
    "expected #{actual} to respond with 416 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_417 do
  match do |actual|
    actual.response_code == 417
  end
  failure_message do |actual|
    "expected #{actual} to respond with 417 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_EXPECTATION_FAILED do
  match do |actual|
    actual.response_code == 417
  end
  failure_message do |actual|
    "expected #{actual} to respond with 417 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_expectation_failed do
  match do |actual|
    actual.response_code == 417
  end
  failure_message do |actual|
    "expected #{actual} to respond with 417 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_expectation_failed do
  match do |actual|
    actual.response_code == 417
  end
  failure_message do |actual|
    "expected #{actual} to respond with 417 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_418 do
  match do |actual|
    actual.response_code == 418
  end
  failure_message do |actual|
    "expected #{actual} to respond with 418 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_IM_A_TEAPOT do
  match do |actual|
    actual.response_code == 418
  end
  failure_message do |actual|
    "expected #{actual} to respond with 418 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_im_a_teapot do
  match do |actual|
    actual.response_code == 418
  end
  failure_message do |actual|
    "expected #{actual} to respond with 418 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_im_a_teapot do
  match do |actual|
    actual.response_code == 418
  end
  failure_message do |actual|
    "expected #{actual} to respond with 418 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_421 do
  match do |actual|
    actual.response_code == 421
  end
  failure_message do |actual|
    "expected #{actual} to respond with 421 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_MISDIRECTED_REQUEST do
  match do |actual|
    actual.response_code == 421
  end
  failure_message do |actual|
    "expected #{actual} to respond with 421 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_misdirected_request do
  match do |actual|
    actual.response_code == 421
  end
  failure_message do |actual|
    "expected #{actual} to respond with 421 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_misdirected_request do
  match do |actual|
    actual.response_code == 421
  end
  failure_message do |actual|
    "expected #{actual} to respond with 421 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_422 do
  match do |actual|
    actual.response_code == 422
  end
  failure_message do |actual|
    "expected #{actual} to respond with 422 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_UNPROCESSABLE_ENTITY do
  match do |actual|
    actual.response_code == 422
  end
  failure_message do |actual|
    "expected #{actual} to respond with 422 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_unprocessable_entity do
  match do |actual|
    actual.response_code == 422
  end
  failure_message do |actual|
    "expected #{actual} to respond with 422 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_unprocessable_entity do
  match do |actual|
    actual.response_code == 422
  end
  failure_message do |actual|
    "expected #{actual} to respond with 422 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_423 do
  match do |actual|
    actual.response_code == 423
  end
  failure_message do |actual|
    "expected #{actual} to respond with 423 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_LOCKED do
  match do |actual|
    actual.response_code == 423
  end
  failure_message do |actual|
    "expected #{actual} to respond with 423 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_locked do
  match do |actual|
    actual.response_code == 423
  end
  failure_message do |actual|
    "expected #{actual} to respond with 423 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_locked do
  match do |actual|
    actual.response_code == 423
  end
  failure_message do |actual|
    "expected #{actual} to respond with 423 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_424 do
  match do |actual|
    actual.response_code == 424
  end
  failure_message do |actual|
    "expected #{actual} to respond with 424 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_FAILED_DEPENDENCY do
  match do |actual|
    actual.response_code == 424
  end
  failure_message do |actual|
    "expected #{actual} to respond with 424 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_failed_dependency do
  match do |actual|
    actual.response_code == 424
  end
  failure_message do |actual|
    "expected #{actual} to respond with 424 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_failed_dependency do
  match do |actual|
    actual.response_code == 424
  end
  failure_message do |actual|
    "expected #{actual} to respond with 424 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_426 do
  match do |actual|
    actual.response_code == 426
  end
  failure_message do |actual|
    "expected #{actual} to respond with 426 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_UPGRADE_REQUIRED do
  match do |actual|
    actual.response_code == 426
  end
  failure_message do |actual|
    "expected #{actual} to respond with 426 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_upgrade_required do
  match do |actual|
    actual.response_code == 426
  end
  failure_message do |actual|
    "expected #{actual} to respond with 426 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_upgrade_required do
  match do |actual|
    actual.response_code == 426
  end
  failure_message do |actual|
    "expected #{actual} to respond with 426 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_428 do
  match do |actual|
    actual.response_code == 428
  end
  failure_message do |actual|
    "expected #{actual} to respond with 428 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_PRECONDITION_REQUIRED do
  match do |actual|
    actual.response_code == 428
  end
  failure_message do |actual|
    "expected #{actual} to respond with 428 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_precondition_required do
  match do |actual|
    actual.response_code == 428
  end
  failure_message do |actual|
    "expected #{actual} to respond with 428 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_precondition_required do
  match do |actual|
    actual.response_code == 428
  end
  failure_message do |actual|
    "expected #{actual} to respond with 428 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_429 do
  match do |actual|
    actual.response_code == 429
  end
  failure_message do |actual|
    "expected #{actual} to respond with 429 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_TOO_MANY_REQUESTS do
  match do |actual|
    actual.response_code == 429
  end
  failure_message do |actual|
    "expected #{actual} to respond with 429 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_too_many_requests do
  match do |actual|
    actual.response_code == 429
  end
  failure_message do |actual|
    "expected #{actual} to respond with 429 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_too_many_requests do
  match do |actual|
    actual.response_code == 429
  end
  failure_message do |actual|
    "expected #{actual} to respond with 429 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_431 do
  match do |actual|
    actual.response_code == 431
  end
  failure_message do |actual|
    "expected #{actual} to respond with 431 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_REQUEST_HEADER_FIELDS_TOO_LARGE do
  match do |actual|
    actual.response_code == 431
  end
  failure_message do |actual|
    "expected #{actual} to respond with 431 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_request_header_fields_too_large do
  match do |actual|
    actual.response_code == 431
  end
  failure_message do |actual|
    "expected #{actual} to respond with 431 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_request_header_fields_too_large do
  match do |actual|
    actual.response_code == 431
  end
  failure_message do |actual|
    "expected #{actual} to respond with 431 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_444 do
  match do |actual|
    actual.response_code == 444
  end
  failure_message do |actual|
    "expected #{actual} to respond with 444 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_CONNECTION_CLOSED_WITHOUT_RESPONSE do
  match do |actual|
    actual.response_code == 444
  end
  failure_message do |actual|
    "expected #{actual} to respond with 444 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_connection_closed_without_response do
  match do |actual|
    actual.response_code == 444
  end
  failure_message do |actual|
    "expected #{actual} to respond with 444 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_connection_closed_without_response do
  match do |actual|
    actual.response_code == 444
  end
  failure_message do |actual|
    "expected #{actual} to respond with 444 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_451 do
  match do |actual|
    actual.response_code == 451
  end
  failure_message do |actual|
    "expected #{actual} to respond with 451 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_UNAVAILABLE_FOR_LEGAL_REASONS do
  match do |actual|
    actual.response_code == 451
  end
  failure_message do |actual|
    "expected #{actual} to respond with 451 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_unavailable_for_legal_reasons do
  match do |actual|
    actual.response_code == 451
  end
  failure_message do |actual|
    "expected #{actual} to respond with 451 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_unavailable_for_legal_reasons do
  match do |actual|
    actual.response_code == 451
  end
  failure_message do |actual|
    "expected #{actual} to respond with 451 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_499 do
  match do |actual|
    actual.response_code == 499
  end
  failure_message do |actual|
    "expected #{actual} to respond with 499 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_CLIENT_CLOSED_REQUEST do
  match do |actual|
    actual.response_code == 499
  end
  failure_message do |actual|
    "expected #{actual} to respond with 499 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :respond_with_client_closed_request do
  match do |actual|
    actual.response_code == 499
  end
  failure_message do |actual|
    "expected #{actual} to respond with 499 was #{actual.response_code}"
  end
end

RSpec::Matchers.define :be_client_closed_request do
  match do |actual|
    actual.response_code == 499
  end
  failure_message do |actual|
    "expected #{actual} to respond with 499 was #{actual.response_code}"
  end
end
