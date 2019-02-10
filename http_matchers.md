## HTTP matchers
[HTTP_1XX](#http_1xx) | [HTTP_2XX](#http_2xx) | [HTTP_3XX](#http_3xx) | [HTTP_4XX](#http_4xx) | [HTTP_5XX](#http_5xx) | 
### HTTP_1xx matchers <a name="http_1xxx"></a>
##### respond_with_100
```ruby
describe curl("https://example.org") do
  it { should respond_with_100 }
end
```

##### respond_with_CONTINUE
```ruby
describe curl("https://example.org") do
  it { should respond_with_CONTINUE }
end
```

##### respond_with_continue
```ruby
describe curl("https://example.org") do
  it { should respond_with_continue }
end
```

##### be_continue
```ruby
describe curl("https://example.org") do
  it { should be_continue }
end
```

##### respond_with_101
```ruby
describe curl("https://example.org") do
  it { should respond_with_101 }
end
```

##### respond_with_SWITCHING_PROTOCOLS
```ruby
describe curl("https://example.org") do
  it { should respond_with_SWITCHING_PROTOCOLS }
end
```

##### respond_with_switching_protocols
```ruby
describe curl("https://example.org") do
  it { should respond_with_switching_protocols }
end
```

##### be_switching_protocols
```ruby
describe curl("https://example.org") do
  it { should be_switching_protocols }
end
```

##### respond_with_102
```ruby
describe curl("https://example.org") do
  it { should respond_with_102 }
end
```

##### respond_with_PROCESSING
```ruby
describe curl("https://example.org") do
  it { should respond_with_PROCESSING }
end
```

##### respond_with_processing
```ruby
describe curl("https://example.org") do
  it { should respond_with_processing }
end
```

##### be_processing
```ruby
describe curl("https://example.org") do
  it { should be_processing }
end
```

### HTTP_2xx matchers <a name="http_2xxx"></a>
##### respond_with_200
```ruby
describe curl("https://example.org") do
  it { should respond_with_200 }
end
```

##### respond_with_OK
```ruby
describe curl("https://example.org") do
  it { should respond_with_OK }
end
```

##### respond_with_ok
```ruby
describe curl("https://example.org") do
  it { should respond_with_ok }
end
```

##### be_ok
```ruby
describe curl("https://example.org") do
  it { should be_ok }
end
```

##### respond_with_201
```ruby
describe curl("https://example.org") do
  it { should respond_with_201 }
end
```

##### respond_with_CREATED
```ruby
describe curl("https://example.org") do
  it { should respond_with_CREATED }
end
```

##### respond_with_created
```ruby
describe curl("https://example.org") do
  it { should respond_with_created }
end
```

##### be_created
```ruby
describe curl("https://example.org") do
  it { should be_created }
end
```

##### respond_with_202
```ruby
describe curl("https://example.org") do
  it { should respond_with_202 }
end
```

##### respond_with_ACCEPTED
```ruby
describe curl("https://example.org") do
  it { should respond_with_ACCEPTED }
end
```

##### respond_with_accepted
```ruby
describe curl("https://example.org") do
  it { should respond_with_accepted }
end
```

##### be_accepted
```ruby
describe curl("https://example.org") do
  it { should be_accepted }
end
```

##### respond_with_203
```ruby
describe curl("https://example.org") do
  it { should respond_with_203 }
end
```

##### respond_with_NON_AUTHORITATIVE_INFORMATION
```ruby
describe curl("https://example.org") do
  it { should respond_with_NON_AUTHORITATIVE_INFORMATION }
end
```

##### respond_with_non_authoritative_information
```ruby
describe curl("https://example.org") do
  it { should respond_with_non_authoritative_information }
end
```

##### be_non_authoritative_information
```ruby
describe curl("https://example.org") do
  it { should be_non_authoritative_information }
end
```

##### respond_with_204
```ruby
describe curl("https://example.org") do
  it { should respond_with_204 }
end
```

##### respond_with_NO_CONTENT
```ruby
describe curl("https://example.org") do
  it { should respond_with_NO_CONTENT }
end
```

##### respond_with_no_content
```ruby
describe curl("https://example.org") do
  it { should respond_with_no_content }
end
```

##### be_no_content
```ruby
describe curl("https://example.org") do
  it { should be_no_content }
end
```

##### respond_with_205
```ruby
describe curl("https://example.org") do
  it { should respond_with_205 }
end
```

##### respond_with_RESET_CONTENT
```ruby
describe curl("https://example.org") do
  it { should respond_with_RESET_CONTENT }
end
```

##### respond_with_reset_content
```ruby
describe curl("https://example.org") do
  it { should respond_with_reset_content }
end
```

##### be_reset_content
```ruby
describe curl("https://example.org") do
  it { should be_reset_content }
end
```

##### respond_with_206
```ruby
describe curl("https://example.org") do
  it { should respond_with_206 }
end
```

##### respond_with_PARTIAL_CONTENT
```ruby
describe curl("https://example.org") do
  it { should respond_with_PARTIAL_CONTENT }
end
```

##### respond_with_partial_content
```ruby
describe curl("https://example.org") do
  it { should respond_with_partial_content }
end
```

##### be_partial_content
```ruby
describe curl("https://example.org") do
  it { should be_partial_content }
end
```

##### respond_with_207
```ruby
describe curl("https://example.org") do
  it { should respond_with_207 }
end
```

##### respond_with_MULTI_STATUS
```ruby
describe curl("https://example.org") do
  it { should respond_with_MULTI_STATUS }
end
```

##### respond_with_multi_status
```ruby
describe curl("https://example.org") do
  it { should respond_with_multi_status }
end
```

##### be_multi_status
```ruby
describe curl("https://example.org") do
  it { should be_multi_status }
end
```

##### respond_with_208
```ruby
describe curl("https://example.org") do
  it { should respond_with_208 }
end
```

##### respond_with_ALREADY_REPORTED
```ruby
describe curl("https://example.org") do
  it { should respond_with_ALREADY_REPORTED }
end
```

##### respond_with_already_reported
```ruby
describe curl("https://example.org") do
  it { should respond_with_already_reported }
end
```

##### be_already_reported
```ruby
describe curl("https://example.org") do
  it { should be_already_reported }
end
```

##### respond_with_226
```ruby
describe curl("https://example.org") do
  it { should respond_with_226 }
end
```

##### respond_with_IM_USED
```ruby
describe curl("https://example.org") do
  it { should respond_with_IM_USED }
end
```

##### respond_with_im_used
```ruby
describe curl("https://example.org") do
  it { should respond_with_im_used }
end
```

##### be_im_used
```ruby
describe curl("https://example.org") do
  it { should be_im_used }
end
```

### HTTP_3xx matchers <a name="http_3xxx"></a>
##### respond_with_300
```ruby
describe curl("https://example.org") do
  it { should respond_with_300 }
end
```

##### respond_with_MULTIPLE_CHOICES
```ruby
describe curl("https://example.org") do
  it { should respond_with_MULTIPLE_CHOICES }
end
```

##### respond_with_multiple_choices
```ruby
describe curl("https://example.org") do
  it { should respond_with_multiple_choices }
end
```

##### be_multiple_choices
```ruby
describe curl("https://example.org") do
  it { should be_multiple_choices }
end
```

##### respond_with_301
```ruby
describe curl("https://example.org") do
  it { should respond_with_301 }
end
```

##### respond_with_MOVED_PERMANENTLY
```ruby
describe curl("https://example.org") do
  it { should respond_with_MOVED_PERMANENTLY }
end
```

##### respond_with_moved_permanently
```ruby
describe curl("https://example.org") do
  it { should respond_with_moved_permanently }
end
```

##### be_moved_permanently
```ruby
describe curl("https://example.org") do
  it { should be_moved_permanently }
end
```

##### respond_with_302
```ruby
describe curl("https://example.org") do
  it { should respond_with_302 }
end
```

##### respond_with_FOUND
```ruby
describe curl("https://example.org") do
  it { should respond_with_FOUND }
end
```

##### respond_with_found
```ruby
describe curl("https://example.org") do
  it { should respond_with_found }
end
```

##### be_found
```ruby
describe curl("https://example.org") do
  it { should be_found }
end
```

##### respond_with_303
```ruby
describe curl("https://example.org") do
  it { should respond_with_303 }
end
```

##### respond_with_SEE_OTHER
```ruby
describe curl("https://example.org") do
  it { should respond_with_SEE_OTHER }
end
```

##### respond_with_see_other
```ruby
describe curl("https://example.org") do
  it { should respond_with_see_other }
end
```

##### be_see_other
```ruby
describe curl("https://example.org") do
  it { should be_see_other }
end
```

##### respond_with_304
```ruby
describe curl("https://example.org") do
  it { should respond_with_304 }
end
```

##### respond_with_NOT_MODIFIED
```ruby
describe curl("https://example.org") do
  it { should respond_with_NOT_MODIFIED }
end
```

##### respond_with_not_modified
```ruby
describe curl("https://example.org") do
  it { should respond_with_not_modified }
end
```

##### be_not_modified
```ruby
describe curl("https://example.org") do
  it { should be_not_modified }
end
```

##### respond_with_305
```ruby
describe curl("https://example.org") do
  it { should respond_with_305 }
end
```

##### respond_with_USE_PROXY
```ruby
describe curl("https://example.org") do
  it { should respond_with_USE_PROXY }
end
```

##### respond_with_use_proxy
```ruby
describe curl("https://example.org") do
  it { should respond_with_use_proxy }
end
```

##### be_use_proxy
```ruby
describe curl("https://example.org") do
  it { should be_use_proxy }
end
```

##### respond_with_307
```ruby
describe curl("https://example.org") do
  it { should respond_with_307 }
end
```

##### respond_with_TEMPORARY_REDIRECT
```ruby
describe curl("https://example.org") do
  it { should respond_with_TEMPORARY_REDIRECT }
end
```

##### respond_with_temporary_redirect
```ruby
describe curl("https://example.org") do
  it { should respond_with_temporary_redirect }
end
```

##### be_temporary_redirect
```ruby
describe curl("https://example.org") do
  it { should be_temporary_redirect }
end
```

##### respond_with_308
```ruby
describe curl("https://example.org") do
  it { should respond_with_308 }
end
```

##### respond_with_PERMANENT_REDIRECT
```ruby
describe curl("https://example.org") do
  it { should respond_with_PERMANENT_REDIRECT }
end
```

##### respond_with_permanent_redirect
```ruby
describe curl("https://example.org") do
  it { should respond_with_permanent_redirect }
end
```

##### be_permanent_redirect
```ruby
describe curl("https://example.org") do
  it { should be_permanent_redirect }
end
```

### HTTP_4xx matchers <a name="http_4xxx"></a>
##### respond_with_400
```ruby
describe curl("https://example.org") do
  it { should respond_with_400 }
end
```

##### respond_with_BAD_REQUEST
```ruby
describe curl("https://example.org") do
  it { should respond_with_BAD_REQUEST }
end
```

##### respond_with_bad_request
```ruby
describe curl("https://example.org") do
  it { should respond_with_bad_request }
end
```

##### be_bad_request
```ruby
describe curl("https://example.org") do
  it { should be_bad_request }
end
```

##### respond_with_401
```ruby
describe curl("https://example.org") do
  it { should respond_with_401 }
end
```

##### respond_with_UNAUTHORIZED
```ruby
describe curl("https://example.org") do
  it { should respond_with_UNAUTHORIZED }
end
```

##### respond_with_unauthorized
```ruby
describe curl("https://example.org") do
  it { should respond_with_unauthorized }
end
```

##### be_unauthorized
```ruby
describe curl("https://example.org") do
  it { should be_unauthorized }
end
```

##### respond_with_402
```ruby
describe curl("https://example.org") do
  it { should respond_with_402 }
end
```

##### respond_with_PAYMENT_REQUIRED
```ruby
describe curl("https://example.org") do
  it { should respond_with_PAYMENT_REQUIRED }
end
```

##### respond_with_payment_required
```ruby
describe curl("https://example.org") do
  it { should respond_with_payment_required }
end
```

##### be_payment_required
```ruby
describe curl("https://example.org") do
  it { should be_payment_required }
end
```

##### respond_with_403
```ruby
describe curl("https://example.org") do
  it { should respond_with_403 }
end
```

##### respond_with_FORBIDDEN
```ruby
describe curl("https://example.org") do
  it { should respond_with_FORBIDDEN }
end
```

##### respond_with_forbidden
```ruby
describe curl("https://example.org") do
  it { should respond_with_forbidden }
end
```

##### be_forbidden
```ruby
describe curl("https://example.org") do
  it { should be_forbidden }
end
```

##### respond_with_404
```ruby
describe curl("https://example.org") do
  it { should respond_with_404 }
end
```

##### respond_with_NOT_FOUND
```ruby
describe curl("https://example.org") do
  it { should respond_with_NOT_FOUND }
end
```

##### respond_with_not_found
```ruby
describe curl("https://example.org") do
  it { should respond_with_not_found }
end
```

##### be_not_found
```ruby
describe curl("https://example.org") do
  it { should be_not_found }
end
```

##### respond_with_405
```ruby
describe curl("https://example.org") do
  it { should respond_with_405 }
end
```

##### respond_with_METHOD_NOT_ALLOWED
```ruby
describe curl("https://example.org") do
  it { should respond_with_METHOD_NOT_ALLOWED }
end
```

##### respond_with_method_not_allowed
```ruby
describe curl("https://example.org") do
  it { should respond_with_method_not_allowed }
end
```

##### be_method_not_allowed
```ruby
describe curl("https://example.org") do
  it { should be_method_not_allowed }
end
```

##### respond_with_406
```ruby
describe curl("https://example.org") do
  it { should respond_with_406 }
end
```

##### respond_with_NOT_ACCEPTABLE
```ruby
describe curl("https://example.org") do
  it { should respond_with_NOT_ACCEPTABLE }
end
```

##### respond_with_not_acceptable
```ruby
describe curl("https://example.org") do
  it { should respond_with_not_acceptable }
end
```

##### be_not_acceptable
```ruby
describe curl("https://example.org") do
  it { should be_not_acceptable }
end
```

##### respond_with_407
```ruby
describe curl("https://example.org") do
  it { should respond_with_407 }
end
```

##### respond_with_PROXY_AUTHENTICATION_REQUIRED
```ruby
describe curl("https://example.org") do
  it { should respond_with_PROXY_AUTHENTICATION_REQUIRED }
end
```

##### respond_with_proxy_authentication_required
```ruby
describe curl("https://example.org") do
  it { should respond_with_proxy_authentication_required }
end
```

##### be_proxy_authentication_required
```ruby
describe curl("https://example.org") do
  it { should be_proxy_authentication_required }
end
```

##### respond_with_408
```ruby
describe curl("https://example.org") do
  it { should respond_with_408 }
end
```

##### respond_with_REQUEST_TIMEOUT
```ruby
describe curl("https://example.org") do
  it { should respond_with_REQUEST_TIMEOUT }
end
```

##### respond_with_request_timeout
```ruby
describe curl("https://example.org") do
  it { should respond_with_request_timeout }
end
```

##### be_request_timeout
```ruby
describe curl("https://example.org") do
  it { should be_request_timeout }
end
```

##### respond_with_409
```ruby
describe curl("https://example.org") do
  it { should respond_with_409 }
end
```

##### respond_with_CONFLICT
```ruby
describe curl("https://example.org") do
  it { should respond_with_CONFLICT }
end
```

##### respond_with_conflict
```ruby
describe curl("https://example.org") do
  it { should respond_with_conflict }
end
```

##### be_conflict
```ruby
describe curl("https://example.org") do
  it { should be_conflict }
end
```

##### respond_with_410
```ruby
describe curl("https://example.org") do
  it { should respond_with_410 }
end
```

##### respond_with_GONE
```ruby
describe curl("https://example.org") do
  it { should respond_with_GONE }
end
```

##### respond_with_gone
```ruby
describe curl("https://example.org") do
  it { should respond_with_gone }
end
```

##### be_gone
```ruby
describe curl("https://example.org") do
  it { should be_gone }
end
```

##### respond_with_411
```ruby
describe curl("https://example.org") do
  it { should respond_with_411 }
end
```

##### respond_with_LENGTH_REQUIRED
```ruby
describe curl("https://example.org") do
  it { should respond_with_LENGTH_REQUIRED }
end
```

##### respond_with_length_required
```ruby
describe curl("https://example.org") do
  it { should respond_with_length_required }
end
```

##### be_length_required
```ruby
describe curl("https://example.org") do
  it { should be_length_required }
end
```

##### respond_with_412
```ruby
describe curl("https://example.org") do
  it { should respond_with_412 }
end
```

##### respond_with_PRECONDITION_FAILED
```ruby
describe curl("https://example.org") do
  it { should respond_with_PRECONDITION_FAILED }
end
```

##### respond_with_precondition_failed
```ruby
describe curl("https://example.org") do
  it { should respond_with_precondition_failed }
end
```

##### be_precondition_failed
```ruby
describe curl("https://example.org") do
  it { should be_precondition_failed }
end
```

##### respond_with_413
```ruby
describe curl("https://example.org") do
  it { should respond_with_413 }
end
```

##### respond_with_PAYLOAD_TOO_LARGE
```ruby
describe curl("https://example.org") do
  it { should respond_with_PAYLOAD_TOO_LARGE }
end
```

##### respond_with_payload_too_large
```ruby
describe curl("https://example.org") do
  it { should respond_with_payload_too_large }
end
```

##### be_payload_too_large
```ruby
describe curl("https://example.org") do
  it { should be_payload_too_large }
end
```

##### respond_with_414
```ruby
describe curl("https://example.org") do
  it { should respond_with_414 }
end
```

##### respond_with_REQUEST_URI_TOO_LONG
```ruby
describe curl("https://example.org") do
  it { should respond_with_REQUEST_URI_TOO_LONG }
end
```

##### respond_with_request_uri_too_long
```ruby
describe curl("https://example.org") do
  it { should respond_with_request_uri_too_long }
end
```

##### be_request_uri_too_long
```ruby
describe curl("https://example.org") do
  it { should be_request_uri_too_long }
end
```

##### respond_with_415
```ruby
describe curl("https://example.org") do
  it { should respond_with_415 }
end
```

##### respond_with_UNSUPPORTED_MEDIA_TYPE
```ruby
describe curl("https://example.org") do
  it { should respond_with_UNSUPPORTED_MEDIA_TYPE }
end
```

##### respond_with_unsupported_media_type
```ruby
describe curl("https://example.org") do
  it { should respond_with_unsupported_media_type }
end
```

##### be_unsupported_media_type
```ruby
describe curl("https://example.org") do
  it { should be_unsupported_media_type }
end
```

##### respond_with_416
```ruby
describe curl("https://example.org") do
  it { should respond_with_416 }
end
```

##### respond_with_REQUESTED_RANGE_NOT_SATISFIABLE
```ruby
describe curl("https://example.org") do
  it { should respond_with_REQUESTED_RANGE_NOT_SATISFIABLE }
end
```

##### respond_with_requested_range_not_satisfiable
```ruby
describe curl("https://example.org") do
  it { should respond_with_requested_range_not_satisfiable }
end
```

##### be_requested_range_not_satisfiable
```ruby
describe curl("https://example.org") do
  it { should be_requested_range_not_satisfiable }
end
```

##### respond_with_417
```ruby
describe curl("https://example.org") do
  it { should respond_with_417 }
end
```

##### respond_with_EXPECTATION_FAILED
```ruby
describe curl("https://example.org") do
  it { should respond_with_EXPECTATION_FAILED }
end
```

##### respond_with_expectation_failed
```ruby
describe curl("https://example.org") do
  it { should respond_with_expectation_failed }
end
```

##### be_expectation_failed
```ruby
describe curl("https://example.org") do
  it { should be_expectation_failed }
end
```

##### respond_with_418
```ruby
describe curl("https://example.org") do
  it { should respond_with_418 }
end
```

##### respond_with_IM_A_TEAPOT
```ruby
describe curl("https://example.org") do
  it { should respond_with_IM_A_TEAPOT }
end
```

##### respond_with_im_a_teapot
```ruby
describe curl("https://example.org") do
  it { should respond_with_im_a_teapot }
end
```

##### be_im_a_teapot
```ruby
describe curl("https://example.org") do
  it { should be_im_a_teapot }
end
```

##### respond_with_421
```ruby
describe curl("https://example.org") do
  it { should respond_with_421 }
end
```

##### respond_with_MISDIRECTED_REQUEST
```ruby
describe curl("https://example.org") do
  it { should respond_with_MISDIRECTED_REQUEST }
end
```

##### respond_with_misdirected_request
```ruby
describe curl("https://example.org") do
  it { should respond_with_misdirected_request }
end
```

##### be_misdirected_request
```ruby
describe curl("https://example.org") do
  it { should be_misdirected_request }
end
```

##### respond_with_422
```ruby
describe curl("https://example.org") do
  it { should respond_with_422 }
end
```

##### respond_with_UNPROCESSABLE_ENTITY
```ruby
describe curl("https://example.org") do
  it { should respond_with_UNPROCESSABLE_ENTITY }
end
```

##### respond_with_unprocessable_entity
```ruby
describe curl("https://example.org") do
  it { should respond_with_unprocessable_entity }
end
```

##### be_unprocessable_entity
```ruby
describe curl("https://example.org") do
  it { should be_unprocessable_entity }
end
```

##### respond_with_423
```ruby
describe curl("https://example.org") do
  it { should respond_with_423 }
end
```

##### respond_with_LOCKED
```ruby
describe curl("https://example.org") do
  it { should respond_with_LOCKED }
end
```

##### respond_with_locked
```ruby
describe curl("https://example.org") do
  it { should respond_with_locked }
end
```

##### be_locked
```ruby
describe curl("https://example.org") do
  it { should be_locked }
end
```

##### respond_with_424
```ruby
describe curl("https://example.org") do
  it { should respond_with_424 }
end
```

##### respond_with_FAILED_DEPENDENCY
```ruby
describe curl("https://example.org") do
  it { should respond_with_FAILED_DEPENDENCY }
end
```

##### respond_with_failed_dependency
```ruby
describe curl("https://example.org") do
  it { should respond_with_failed_dependency }
end
```

##### be_failed_dependency
```ruby
describe curl("https://example.org") do
  it { should be_failed_dependency }
end
```

##### respond_with_426
```ruby
describe curl("https://example.org") do
  it { should respond_with_426 }
end
```

##### respond_with_UPGRADE_REQUIRED
```ruby
describe curl("https://example.org") do
  it { should respond_with_UPGRADE_REQUIRED }
end
```

##### respond_with_upgrade_required
```ruby
describe curl("https://example.org") do
  it { should respond_with_upgrade_required }
end
```

##### be_upgrade_required
```ruby
describe curl("https://example.org") do
  it { should be_upgrade_required }
end
```

##### respond_with_428
```ruby
describe curl("https://example.org") do
  it { should respond_with_428 }
end
```

##### respond_with_PRECONDITION_REQUIRED
```ruby
describe curl("https://example.org") do
  it { should respond_with_PRECONDITION_REQUIRED }
end
```

##### respond_with_precondition_required
```ruby
describe curl("https://example.org") do
  it { should respond_with_precondition_required }
end
```

##### be_precondition_required
```ruby
describe curl("https://example.org") do
  it { should be_precondition_required }
end
```

##### respond_with_429
```ruby
describe curl("https://example.org") do
  it { should respond_with_429 }
end
```

##### respond_with_TOO_MANY_REQUESTS
```ruby
describe curl("https://example.org") do
  it { should respond_with_TOO_MANY_REQUESTS }
end
```

##### respond_with_too_many_requests
```ruby
describe curl("https://example.org") do
  it { should respond_with_too_many_requests }
end
```

##### be_too_many_requests
```ruby
describe curl("https://example.org") do
  it { should be_too_many_requests }
end
```

##### respond_with_431
```ruby
describe curl("https://example.org") do
  it { should respond_with_431 }
end
```

##### respond_with_REQUEST_HEADER_FIELDS_TOO_LARGE
```ruby
describe curl("https://example.org") do
  it { should respond_with_REQUEST_HEADER_FIELDS_TOO_LARGE }
end
```

##### respond_with_request_header_fields_too_large
```ruby
describe curl("https://example.org") do
  it { should respond_with_request_header_fields_too_large }
end
```

##### be_request_header_fields_too_large
```ruby
describe curl("https://example.org") do
  it { should be_request_header_fields_too_large }
end
```

##### respond_with_444
```ruby
describe curl("https://example.org") do
  it { should respond_with_444 }
end
```

##### respond_with_CONNECTION_CLOSED_WITHOUT_RESPONSE
```ruby
describe curl("https://example.org") do
  it { should respond_with_CONNECTION_CLOSED_WITHOUT_RESPONSE }
end
```

##### respond_with_connection_closed_without_response
```ruby
describe curl("https://example.org") do
  it { should respond_with_connection_closed_without_response }
end
```

##### be_connection_closed_without_response
```ruby
describe curl("https://example.org") do
  it { should be_connection_closed_without_response }
end
```

##### respond_with_451
```ruby
describe curl("https://example.org") do
  it { should respond_with_451 }
end
```

##### respond_with_UNAVAILABLE_FOR_LEGAL_REASONS
```ruby
describe curl("https://example.org") do
  it { should respond_with_UNAVAILABLE_FOR_LEGAL_REASONS }
end
```

##### respond_with_unavailable_for_legal_reasons
```ruby
describe curl("https://example.org") do
  it { should respond_with_unavailable_for_legal_reasons }
end
```

##### be_unavailable_for_legal_reasons
```ruby
describe curl("https://example.org") do
  it { should be_unavailable_for_legal_reasons }
end
```

##### respond_with_499
```ruby
describe curl("https://example.org") do
  it { should respond_with_499 }
end
```

##### respond_with_CLIENT_CLOSED_REQUEST
```ruby
describe curl("https://example.org") do
  it { should respond_with_CLIENT_CLOSED_REQUEST }
end
```

##### respond_with_client_closed_request
```ruby
describe curl("https://example.org") do
  it { should respond_with_client_closed_request }
end
```

##### be_client_closed_request
```ruby
describe curl("https://example.org") do
  it { should be_client_closed_request }
end
```

### HTTP_5xx matchers <a name="http_5xxx"></a>
##### respond_with_500
```ruby
describe curl("https://example.org") do
  it { should respond_with_500 }
end
```

##### respond_with_INTERNAL_SERVER_ERROR
```ruby
describe curl("https://example.org") do
  it { should respond_with_INTERNAL_SERVER_ERROR }
end
```

##### respond_with_internal_server_error
```ruby
describe curl("https://example.org") do
  it { should respond_with_internal_server_error }
end
```

##### be_internal_server_error
```ruby
describe curl("https://example.org") do
  it { should be_internal_server_error }
end
```

##### respond_with_501
```ruby
describe curl("https://example.org") do
  it { should respond_with_501 }
end
```

##### respond_with_NOT_IMPLEMENTED
```ruby
describe curl("https://example.org") do
  it { should respond_with_NOT_IMPLEMENTED }
end
```

##### respond_with_not_implemented
```ruby
describe curl("https://example.org") do
  it { should respond_with_not_implemented }
end
```

##### be_not_implemented
```ruby
describe curl("https://example.org") do
  it { should be_not_implemented }
end
```

##### respond_with_502
```ruby
describe curl("https://example.org") do
  it { should respond_with_502 }
end
```

##### respond_with_BAD_GATEWAY
```ruby
describe curl("https://example.org") do
  it { should respond_with_BAD_GATEWAY }
end
```

##### respond_with_bad_gateway
```ruby
describe curl("https://example.org") do
  it { should respond_with_bad_gateway }
end
```

##### be_bad_gateway
```ruby
describe curl("https://example.org") do
  it { should be_bad_gateway }
end
```

##### respond_with_503
```ruby
describe curl("https://example.org") do
  it { should respond_with_503 }
end
```

##### respond_with_SERVICE_UNAVAILABLE
```ruby
describe curl("https://example.org") do
  it { should respond_with_SERVICE_UNAVAILABLE }
end
```

##### respond_with_service_unavailable
```ruby
describe curl("https://example.org") do
  it { should respond_with_service_unavailable }
end
```

##### be_service_unavailable
```ruby
describe curl("https://example.org") do
  it { should be_service_unavailable }
end
```

##### respond_with_504
```ruby
describe curl("https://example.org") do
  it { should respond_with_504 }
end
```

##### respond_with_GATEWAY_TIMEOUT
```ruby
describe curl("https://example.org") do
  it { should respond_with_GATEWAY_TIMEOUT }
end
```

##### respond_with_gateway_timeout
```ruby
describe curl("https://example.org") do
  it { should respond_with_gateway_timeout }
end
```

##### be_gateway_timeout
```ruby
describe curl("https://example.org") do
  it { should be_gateway_timeout }
end
```

##### respond_with_505
```ruby
describe curl("https://example.org") do
  it { should respond_with_505 }
end
```

##### respond_with_HTTP_VERSION_NOT_SUPPORTED
```ruby
describe curl("https://example.org") do
  it { should respond_with_HTTP_VERSION_NOT_SUPPORTED }
end
```

##### respond_with_http_version_not_supported
```ruby
describe curl("https://example.org") do
  it { should respond_with_http_version_not_supported }
end
```

##### be_http_version_not_supported
```ruby
describe curl("https://example.org") do
  it { should be_http_version_not_supported }
end
```

##### respond_with_506
```ruby
describe curl("https://example.org") do
  it { should respond_with_506 }
end
```

##### respond_with_VARIANT_ALSO_NEGOTIATES
```ruby
describe curl("https://example.org") do
  it { should respond_with_VARIANT_ALSO_NEGOTIATES }
end
```

##### respond_with_variant_also_negotiates
```ruby
describe curl("https://example.org") do
  it { should respond_with_variant_also_negotiates }
end
```

##### be_variant_also_negotiates
```ruby
describe curl("https://example.org") do
  it { should be_variant_also_negotiates }
end
```

##### respond_with_507
```ruby
describe curl("https://example.org") do
  it { should respond_with_507 }
end
```

##### respond_with_INSUFFICIENT_STORAGE
```ruby
describe curl("https://example.org") do
  it { should respond_with_INSUFFICIENT_STORAGE }
end
```

##### respond_with_insufficient_storage
```ruby
describe curl("https://example.org") do
  it { should respond_with_insufficient_storage }
end
```

##### be_insufficient_storage
```ruby
describe curl("https://example.org") do
  it { should be_insufficient_storage }
end
```

##### respond_with_508
```ruby
describe curl("https://example.org") do
  it { should respond_with_508 }
end
```

##### respond_with_LOOP_DETECTED
```ruby
describe curl("https://example.org") do
  it { should respond_with_LOOP_DETECTED }
end
```

##### respond_with_loop_detected
```ruby
describe curl("https://example.org") do
  it { should respond_with_loop_detected }
end
```

##### be_loop_detected
```ruby
describe curl("https://example.org") do
  it { should be_loop_detected }
end
```

##### respond_with_510
```ruby
describe curl("https://example.org") do
  it { should respond_with_510 }
end
```

##### respond_with_NOT_EXTENDED
```ruby
describe curl("https://example.org") do
  it { should respond_with_NOT_EXTENDED }
end
```

##### respond_with_not_extended
```ruby
describe curl("https://example.org") do
  it { should respond_with_not_extended }
end
```

##### be_not_extended
```ruby
describe curl("https://example.org") do
  it { should be_not_extended }
end
```

##### respond_with_511
```ruby
describe curl("https://example.org") do
  it { should respond_with_511 }
end
```

##### respond_with_NETWORK_AUTHENTICATION_REQUIRED
```ruby
describe curl("https://example.org") do
  it { should respond_with_NETWORK_AUTHENTICATION_REQUIRED }
end
```

##### respond_with_network_authentication_required
```ruby
describe curl("https://example.org") do
  it { should respond_with_network_authentication_required }
end
```

##### be_network_authentication_required
```ruby
describe curl("https://example.org") do
  it { should be_network_authentication_required }
end
```

##### respond_with_599
```ruby
describe curl("https://example.org") do
  it { should respond_with_599 }
end
```

##### respond_with_NETWORK_CONNECT_TIMEOUT_ERROR
```ruby
describe curl("https://example.org") do
  it { should respond_with_NETWORK_CONNECT_TIMEOUT_ERROR }
end
```

##### respond_with_network_connect_timeout_error
```ruby
describe curl("https://example.org") do
  it { should respond_with_network_connect_timeout_error }
end
```

##### be_network_connect_timeout_error
```ruby
describe curl("https://example.org") do
  it { should be_network_connect_timeout_error }
end
```

