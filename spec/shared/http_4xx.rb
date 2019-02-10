shared_examples 'HTTP::4XX' do
  describe curl('http://localhost:18754/400') do
    it { should respond_with_400 }
    it { should respond_with_BAD_REQUEST }
    it { should respond_with_bad_request }
    it { should be_bad_request }
  end
  describe curl('http://localhost:18754/401') do
    it { should respond_with_401 }
    it { should respond_with_UNAUTHORIZED }
    it { should respond_with_unauthorized }
    it { should be_unauthorized }
  end
  describe curl('http://localhost:18754/402') do
    it { should respond_with_402 }
    it { should respond_with_PAYMENT_REQUIRED }
    it { should respond_with_payment_required }
    it { should be_payment_required }
  end
  describe curl('http://localhost:18754/403') do
    it { should respond_with_403 }
    it { should respond_with_FORBIDDEN }
    it { should respond_with_forbidden }
    it { should be_forbidden }
  end
  describe curl('http://localhost:18754/404') do
    it { should respond_with_404 }
    it { should respond_with_NOT_FOUND }
    it { should respond_with_not_found }
    it { should be_not_found }
  end
  describe curl('http://localhost:18754/405') do
    it { should respond_with_405 }
    it { should respond_with_METHOD_NOT_ALLOWED }
    it { should respond_with_method_not_allowed }
    it { should be_method_not_allowed }
  end
  describe curl('http://localhost:18754/406') do
    it { should respond_with_406 }
    it { should respond_with_NOT_ACCEPTABLE }
    it { should respond_with_not_acceptable }
    it { should be_not_acceptable }
  end
  describe curl('http://localhost:18754/407') do
    it { should respond_with_407 }
    it { should respond_with_PROXY_AUTHENTICATION_REQUIRED }
    it { should respond_with_proxy_authentication_required }
    it { should be_proxy_authentication_required }
  end
  describe curl('http://localhost:18754/408') do
    it { should respond_with_408 }
    it { should respond_with_REQUEST_TIMEOUT }
    it { should respond_with_request_timeout }
    it { should be_request_timeout }
  end
  describe curl('http://localhost:18754/409') do
    it { should respond_with_409 }
    it { should respond_with_CONFLICT }
    it { should respond_with_conflict }
    it { should be_conflict }
  end
  describe curl('http://localhost:18754/410') do
    it { should respond_with_410 }
    it { should respond_with_GONE }
    it { should respond_with_gone }
    it { should be_gone }
  end
  describe curl('http://localhost:18754/411') do
    it { should respond_with_411 }
    it { should respond_with_LENGTH_REQUIRED }
    it { should respond_with_length_required }
    it { should be_length_required }
  end
  describe curl('http://localhost:18754/412') do
    it { should respond_with_412 }
    it { should respond_with_PRECONDITION_FAILED }
    it { should respond_with_precondition_failed }
    it { should be_precondition_failed }
  end
  describe curl('http://localhost:18754/413') do
    it { should respond_with_413 }
    it { should respond_with_PAYLOAD_TOO_LARGE }
    it { should respond_with_payload_too_large }
    it { should be_payload_too_large }
  end
  describe curl('http://localhost:18754/414') do
    it { should respond_with_414 }
    it { should respond_with_REQUEST_URI_TOO_LONG }
    it { should respond_with_request_uri_too_long }
    it { should be_request_uri_too_long }
  end
  describe curl('http://localhost:18754/415') do
    it { should respond_with_415 }
    it { should respond_with_UNSUPPORTED_MEDIA_TYPE }
    it { should respond_with_unsupported_media_type }
    it { should be_unsupported_media_type }
  end
  describe curl('http://localhost:18754/416') do
    it { should respond_with_416 }
    it { should respond_with_REQUESTED_RANGE_NOT_SATISFIABLE }
    it { should respond_with_requested_range_not_satisfiable }
    it { should be_requested_range_not_satisfiable }
  end
  describe curl('http://localhost:18754/417') do
    it { should respond_with_417 }
    it { should respond_with_EXPECTATION_FAILED }
    it { should respond_with_expectation_failed }
    it { should be_expectation_failed }
  end
  describe curl('http://localhost:18754/418') do
    it { should respond_with_418 }
    it { should respond_with_IM_A_TEAPOT }
    it { should respond_with_im_a_teapot }
    it { should be_im_a_teapot }
  end
  describe curl('http://localhost:18754/421') do
    it { should respond_with_421 }
    it { should respond_with_MISDIRECTED_REQUEST }
    it { should respond_with_misdirected_request }
    it { should be_misdirected_request }
  end
  describe curl('http://localhost:18754/422') do
    it { should respond_with_422 }
    it { should respond_with_UNPROCESSABLE_ENTITY }
    it { should respond_with_unprocessable_entity }
    it { should be_unprocessable_entity }
  end
  describe curl('http://localhost:18754/423') do
    it { should respond_with_423 }
    it { should respond_with_LOCKED }
    it { should respond_with_locked }
    it { should be_locked }
  end
  describe curl('http://localhost:18754/424') do
    it { should respond_with_424 }
    it { should respond_with_FAILED_DEPENDENCY }
    it { should respond_with_failed_dependency }
    it { should be_failed_dependency }
  end
  describe curl('http://localhost:18754/426') do
    it { should respond_with_426 }
    it { should respond_with_UPGRADE_REQUIRED }
    it { should respond_with_upgrade_required }
    it { should be_upgrade_required }
  end
  describe curl('http://localhost:18754/428') do
    it { should respond_with_428 }
    it { should respond_with_PRECONDITION_REQUIRED }
    it { should respond_with_precondition_required }
    it { should be_precondition_required }
  end
  describe curl('http://localhost:18754/429') do
    it { should respond_with_429 }
    it { should respond_with_TOO_MANY_REQUESTS }
    it { should respond_with_too_many_requests }
    it { should be_too_many_requests }
  end
  describe curl('http://localhost:18754/431') do
    it { should respond_with_431 }
    it { should respond_with_REQUEST_HEADER_FIELDS_TOO_LARGE }
    it { should respond_with_request_header_fields_too_large }
    it { should be_request_header_fields_too_large }
  end
  describe curl('http://localhost:18754/444') do
    it { should respond_with_444 }
    it { should respond_with_CONNECTION_CLOSED_WITHOUT_RESPONSE }
    it { should respond_with_connection_closed_without_response }
    it { should be_connection_closed_without_response }
  end
  describe curl('http://localhost:18754/451') do
    it { should respond_with_451 }
    it { should respond_with_UNAVAILABLE_FOR_LEGAL_REASONS }
    it { should respond_with_unavailable_for_legal_reasons }
    it { should be_unavailable_for_legal_reasons }
  end
  describe curl('http://localhost:18754/499') do
    it { should respond_with_499 }
    it { should respond_with_CLIENT_CLOSED_REQUEST }
    it { should respond_with_client_closed_request }
    it { should be_client_closed_request }
 end
end

