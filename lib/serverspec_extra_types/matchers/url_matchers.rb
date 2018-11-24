RSpec::Matchers.define :respond_with_100 do 
  match do |actual|
    actual.response_code 100
  end
  failure_message do |actual|
    "expected #{actual} to responed with 100"
  end
end

RSpec::Matchers.define :respond_with_CONTINUE do 
  match do |actual|
    actual.response_code 100
  end
  failure_message do |actual|
    "expected #{actual} to responed with 100"
  end
end

RSpec::Matchers.define :respond_with_continue do 
  match do |actual|
    actual.response_code 100
  end
  failure_message do |actual|
    "expected #{actual} to responed with 100"
  end
end

RSpec::Matchers.define :be_continue do 
  match do |actual|
    actual.response_code 100
  end
  failure_message do |actual|
    "expected #{actual} to responed with 100"
  end
end

RSpec::Matchers.define :respond_with_101 do 
  match do |actual|
    actual.response_code 101
  end
  failure_message do |actual|
    "expected #{actual} to responed with 101"
  end
end

RSpec::Matchers.define :respond_with_SWITCHING_PROTOCOLS do 
  match do |actual|
    actual.response_code 101
  end
  failure_message do |actual|
    "expected #{actual} to responed with 101"
  end
end

RSpec::Matchers.define :respond_with_switching_protocols do 
  match do |actual|
    actual.response_code 101
  end
  failure_message do |actual|
    "expected #{actual} to responed with 101"
  end
end

RSpec::Matchers.define :be_switching_protocols do 
  match do |actual|
    actual.response_code 101
  end
  failure_message do |actual|
    "expected #{actual} to responed with 101"
  end
end

RSpec::Matchers.define :respond_with_102 do 
  match do |actual|
    actual.response_code 102
  end
  failure_message do |actual|
    "expected #{actual} to responed with 102"
  end
end

RSpec::Matchers.define :respond_with_PROCESSING do 
  match do |actual|
    actual.response_code 102
  end
  failure_message do |actual|
    "expected #{actual} to responed with 102"
  end
end

RSpec::Matchers.define :respond_with_processing do 
  match do |actual|
    actual.response_code 102
  end
  failure_message do |actual|
    "expected #{actual} to responed with 102"
  end
end

RSpec::Matchers.define :be_processing do 
  match do |actual|
    actual.response_code 102
  end
  failure_message do |actual|
    "expected #{actual} to responed with 102"
  end
end

RSpec::Matchers.define :respond_with_200 do 
  match do |actual|
    actual.response_code 200
  end
  failure_message do |actual|
    "expected #{actual} to responed with 200"
  end
end

RSpec::Matchers.define :respond_with_OK do 
  match do |actual|
    actual.response_code 200
  end
  failure_message do |actual|
    "expected #{actual} to responed with 200"
  end
end

RSpec::Matchers.define :respond_with_ok do 
  match do |actual|
    actual.response_code 200
  end
  failure_message do |actual|
    "expected #{actual} to responed with 200"
  end
end

RSpec::Matchers.define :be_ok do 
  match do |actual|
    actual.response_code 200
  end
  failure_message do |actual|
    "expected #{actual} to responed with 200"
  end
end

RSpec::Matchers.define :respond_with_201 do 
  match do |actual|
    actual.response_code 201
  end
  failure_message do |actual|
    "expected #{actual} to responed with 201"
  end
end

RSpec::Matchers.define :respond_with_CREATED do 
  match do |actual|
    actual.response_code 201
  end
  failure_message do |actual|
    "expected #{actual} to responed with 201"
  end
end

RSpec::Matchers.define :respond_with_created do 
  match do |actual|
    actual.response_code 201
  end
  failure_message do |actual|
    "expected #{actual} to responed with 201"
  end
end

RSpec::Matchers.define :be_created do 
  match do |actual|
    actual.response_code 201
  end
  failure_message do |actual|
    "expected #{actual} to responed with 201"
  end
end

RSpec::Matchers.define :respond_with_202 do 
  match do |actual|
    actual.response_code 202
  end
  failure_message do |actual|
    "expected #{actual} to responed with 202"
  end
end

RSpec::Matchers.define :respond_with_ACCEPTED do 
  match do |actual|
    actual.response_code 202
  end
  failure_message do |actual|
    "expected #{actual} to responed with 202"
  end
end

RSpec::Matchers.define :respond_with_accepted do 
  match do |actual|
    actual.response_code 202
  end
  failure_message do |actual|
    "expected #{actual} to responed with 202"
  end
end

RSpec::Matchers.define :be_accepted do 
  match do |actual|
    actual.response_code 202
  end
  failure_message do |actual|
    "expected #{actual} to responed with 202"
  end
end

RSpec::Matchers.define :respond_with_203 do 
  match do |actual|
    actual.response_code 203
  end
  failure_message do |actual|
    "expected #{actual} to responed with 203"
  end
end

RSpec::Matchers.define :respond_with_NON_AUTHORITATIVE_INFORMATION do 
  match do |actual|
    actual.response_code 203
  end
  failure_message do |actual|
    "expected #{actual} to responed with 203"
  end
end

RSpec::Matchers.define :respond_with_non_authoritative_information do 
  match do |actual|
    actual.response_code 203
  end
  failure_message do |actual|
    "expected #{actual} to responed with 203"
  end
end

RSpec::Matchers.define :be_non_authoritative_information do 
  match do |actual|
    actual.response_code 203
  end
  failure_message do |actual|
    "expected #{actual} to responed with 203"
  end
end

RSpec::Matchers.define :respond_with_204 do 
  match do |actual|
    actual.response_code 204
  end
  failure_message do |actual|
    "expected #{actual} to responed with 204"
  end
end

RSpec::Matchers.define :respond_with_NO_CONTENT do 
  match do |actual|
    actual.response_code 204
  end
  failure_message do |actual|
    "expected #{actual} to responed with 204"
  end
end

RSpec::Matchers.define :respond_with_no_content do 
  match do |actual|
    actual.response_code 204
  end
  failure_message do |actual|
    "expected #{actual} to responed with 204"
  end
end

RSpec::Matchers.define :be_no_content do 
  match do |actual|
    actual.response_code 204
  end
  failure_message do |actual|
    "expected #{actual} to responed with 204"
  end
end

RSpec::Matchers.define :respond_with_205 do 
  match do |actual|
    actual.response_code 205
  end
  failure_message do |actual|
    "expected #{actual} to responed with 205"
  end
end

RSpec::Matchers.define :respond_with_RESET_CONTENT do 
  match do |actual|
    actual.response_code 205
  end
  failure_message do |actual|
    "expected #{actual} to responed with 205"
  end
end

RSpec::Matchers.define :respond_with_reset_content do 
  match do |actual|
    actual.response_code 205
  end
  failure_message do |actual|
    "expected #{actual} to responed with 205"
  end
end

RSpec::Matchers.define :be_reset_content do 
  match do |actual|
    actual.response_code 205
  end
  failure_message do |actual|
    "expected #{actual} to responed with 205"
  end
end

RSpec::Matchers.define :respond_with_206 do 
  match do |actual|
    actual.response_code 206
  end
  failure_message do |actual|
    "expected #{actual} to responed with 206"
  end
end

RSpec::Matchers.define :respond_with_PARTIAL_CONTENT do 
  match do |actual|
    actual.response_code 206
  end
  failure_message do |actual|
    "expected #{actual} to responed with 206"
  end
end

RSpec::Matchers.define :respond_with_partial_content do 
  match do |actual|
    actual.response_code 206
  end
  failure_message do |actual|
    "expected #{actual} to responed with 206"
  end
end

RSpec::Matchers.define :be_partial_content do 
  match do |actual|
    actual.response_code 206
  end
  failure_message do |actual|
    "expected #{actual} to responed with 206"
  end
end

RSpec::Matchers.define :respond_with_207 do 
  match do |actual|
    actual.response_code 207
  end
  failure_message do |actual|
    "expected #{actual} to responed with 207"
  end
end

RSpec::Matchers.define :respond_with_MULTI_STATUS do 
  match do |actual|
    actual.response_code 207
  end
  failure_message do |actual|
    "expected #{actual} to responed with 207"
  end
end

RSpec::Matchers.define :respond_with_multi_status do 
  match do |actual|
    actual.response_code 207
  end
  failure_message do |actual|
    "expected #{actual} to responed with 207"
  end
end

RSpec::Matchers.define :be_multi_status do 
  match do |actual|
    actual.response_code 207
  end
  failure_message do |actual|
    "expected #{actual} to responed with 207"
  end
end

RSpec::Matchers.define :respond_with_208 do 
  match do |actual|
    actual.response_code 208
  end
  failure_message do |actual|
    "expected #{actual} to responed with 208"
  end
end

RSpec::Matchers.define :respond_with_ALREADY_REPORTED do 
  match do |actual|
    actual.response_code 208
  end
  failure_message do |actual|
    "expected #{actual} to responed with 208"
  end
end

RSpec::Matchers.define :respond_with_already_reported do 
  match do |actual|
    actual.response_code 208
  end
  failure_message do |actual|
    "expected #{actual} to responed with 208"
  end
end

RSpec::Matchers.define :be_already_reported do 
  match do |actual|
    actual.response_code 208
  end
  failure_message do |actual|
    "expected #{actual} to responed with 208"
  end
end

RSpec::Matchers.define :respond_with_226 do 
  match do |actual|
    actual.response_code 226
  end
  failure_message do |actual|
    "expected #{actual} to responed with 226"
  end
end

RSpec::Matchers.define :respond_with_IM_USED do 
  match do |actual|
    actual.response_code 226
  end
  failure_message do |actual|
    "expected #{actual} to responed with 226"
  end
end

RSpec::Matchers.define :respond_with_im_used do 
  match do |actual|
    actual.response_code 226
  end
  failure_message do |actual|
    "expected #{actual} to responed with 226"
  end
end

RSpec::Matchers.define :be_im_used do 
  match do |actual|
    actual.response_code 226
  end
  failure_message do |actual|
    "expected #{actual} to responed with 226"
  end
end

RSpec::Matchers.define :respond_with_300 do 
  match do |actual|
    actual.response_code 300
  end
  failure_message do |actual|
    "expected #{actual} to responed with 300"
  end
end

RSpec::Matchers.define :respond_with_MULTIPLE_CHOICES do 
  match do |actual|
    actual.response_code 300
  end
  failure_message do |actual|
    "expected #{actual} to responed with 300"
  end
end

RSpec::Matchers.define :respond_with_multiple_choices do 
  match do |actual|
    actual.response_code 300
  end
  failure_message do |actual|
    "expected #{actual} to responed with 300"
  end
end

RSpec::Matchers.define :be_multiple_choices do 
  match do |actual|
    actual.response_code 300
  end
  failure_message do |actual|
    "expected #{actual} to responed with 300"
  end
end

RSpec::Matchers.define :respond_with_301 do 
  match do |actual|
    actual.response_code 301
  end
  failure_message do |actual|
    "expected #{actual} to responed with 301"
  end
end

RSpec::Matchers.define :respond_with_MOVED_PERMANENTLY do 
  match do |actual|
    actual.response_code 301
  end
  failure_message do |actual|
    "expected #{actual} to responed with 301"
  end
end

RSpec::Matchers.define :respond_with_moved_permanently do 
  match do |actual|
    actual.response_code 301
  end
  failure_message do |actual|
    "expected #{actual} to responed with 301"
  end
end

RSpec::Matchers.define :be_moved_permanently do 
  match do |actual|
    actual.response_code 301
  end
  failure_message do |actual|
    "expected #{actual} to responed with 301"
  end
end

RSpec::Matchers.define :respond_with_302 do 
  match do |actual|
    actual.response_code 302
  end
  failure_message do |actual|
    "expected #{actual} to responed with 302"
  end
end

RSpec::Matchers.define :respond_with_FOUND do 
  match do |actual|
    actual.response_code 302
  end
  failure_message do |actual|
    "expected #{actual} to responed with 302"
  end
end

RSpec::Matchers.define :respond_with_found do 
  match do |actual|
    actual.response_code 302
  end
  failure_message do |actual|
    "expected #{actual} to responed with 302"
  end
end

RSpec::Matchers.define :be_found do 
  match do |actual|
    actual.response_code 302
  end
  failure_message do |actual|
    "expected #{actual} to responed with 302"
  end
end

RSpec::Matchers.define :respond_with_303 do 
  match do |actual|
    actual.response_code 303
  end
  failure_message do |actual|
    "expected #{actual} to responed with 303"
  end
end

RSpec::Matchers.define :respond_with_SEE_OTHER do 
  match do |actual|
    actual.response_code 303
  end
  failure_message do |actual|
    "expected #{actual} to responed with 303"
  end
end

RSpec::Matchers.define :respond_with_see_other do 
  match do |actual|
    actual.response_code 303
  end
  failure_message do |actual|
    "expected #{actual} to responed with 303"
  end
end

RSpec::Matchers.define :be_see_other do 
  match do |actual|
    actual.response_code 303
  end
  failure_message do |actual|
    "expected #{actual} to responed with 303"
  end
end

RSpec::Matchers.define :respond_with_304 do 
  match do |actual|
    actual.response_code 304
  end
  failure_message do |actual|
    "expected #{actual} to responed with 304"
  end
end

RSpec::Matchers.define :respond_with_NOT_MODIFIED do 
  match do |actual|
    actual.response_code 304
  end
  failure_message do |actual|
    "expected #{actual} to responed with 304"
  end
end

RSpec::Matchers.define :respond_with_not_modified do 
  match do |actual|
    actual.response_code 304
  end
  failure_message do |actual|
    "expected #{actual} to responed with 304"
  end
end

RSpec::Matchers.define :be_not_modified do 
  match do |actual|
    actual.response_code 304
  end
  failure_message do |actual|
    "expected #{actual} to responed with 304"
  end
end

RSpec::Matchers.define :respond_with_305 do 
  match do |actual|
    actual.response_code 305
  end
  failure_message do |actual|
    "expected #{actual} to responed with 305"
  end
end

RSpec::Matchers.define :respond_with_USE_PROXY do 
  match do |actual|
    actual.response_code 305
  end
  failure_message do |actual|
    "expected #{actual} to responed with 305"
  end
end

RSpec::Matchers.define :respond_with_use_proxy do 
  match do |actual|
    actual.response_code 305
  end
  failure_message do |actual|
    "expected #{actual} to responed with 305"
  end
end

RSpec::Matchers.define :be_use_proxy do 
  match do |actual|
    actual.response_code 305
  end
  failure_message do |actual|
    "expected #{actual} to responed with 305"
  end
end

RSpec::Matchers.define :respond_with_307 do 
  match do |actual|
    actual.response_code 307
  end
  failure_message do |actual|
    "expected #{actual} to responed with 307"
  end
end

RSpec::Matchers.define :respond_with_TEMPORARY_REDIRECT do 
  match do |actual|
    actual.response_code 307
  end
  failure_message do |actual|
    "expected #{actual} to responed with 307"
  end
end

RSpec::Matchers.define :respond_with_temporary_redirect do 
  match do |actual|
    actual.response_code 307
  end
  failure_message do |actual|
    "expected #{actual} to responed with 307"
  end
end

RSpec::Matchers.define :be_temporary_redirect do 
  match do |actual|
    actual.response_code 307
  end
  failure_message do |actual|
    "expected #{actual} to responed with 307"
  end
end

RSpec::Matchers.define :respond_with_308 do 
  match do |actual|
    actual.response_code 308
  end
  failure_message do |actual|
    "expected #{actual} to responed with 308"
  end
end

RSpec::Matchers.define :respond_with_PERMANENT_REDIRECT do 
  match do |actual|
    actual.response_code 308
  end
  failure_message do |actual|
    "expected #{actual} to responed with 308"
  end
end

RSpec::Matchers.define :respond_with_permanent_redirect do 
  match do |actual|
    actual.response_code 308
  end
  failure_message do |actual|
    "expected #{actual} to responed with 308"
  end
end

RSpec::Matchers.define :be_permanent_redirect do 
  match do |actual|
    actual.response_code 308
  end
  failure_message do |actual|
    "expected #{actual} to responed with 308"
  end
end

RSpec::Matchers.define :respond_with_400 do 
  match do |actual|
    actual.response_code 400
  end
  failure_message do |actual|
    "expected #{actual} to responed with 400"
  end
end

RSpec::Matchers.define :respond_with_BAD_REQUEST do 
  match do |actual|
    actual.response_code 400
  end
  failure_message do |actual|
    "expected #{actual} to responed with 400"
  end
end

RSpec::Matchers.define :respond_with_bad_request do 
  match do |actual|
    actual.response_code 400
  end
  failure_message do |actual|
    "expected #{actual} to responed with 400"
  end
end

RSpec::Matchers.define :be_bad_request do 
  match do |actual|
    actual.response_code 400
  end
  failure_message do |actual|
    "expected #{actual} to responed with 400"
  end
end

RSpec::Matchers.define :respond_with_401 do 
  match do |actual|
    actual.response_code 401
  end
  failure_message do |actual|
    "expected #{actual} to responed with 401"
  end
end

RSpec::Matchers.define :respond_with_UNAUTHORIZED do 
  match do |actual|
    actual.response_code 401
  end
  failure_message do |actual|
    "expected #{actual} to responed with 401"
  end
end

RSpec::Matchers.define :respond_with_unauthorized do 
  match do |actual|
    actual.response_code 401
  end
  failure_message do |actual|
    "expected #{actual} to responed with 401"
  end
end

RSpec::Matchers.define :be_unauthorized do 
  match do |actual|
    actual.response_code 401
  end
  failure_message do |actual|
    "expected #{actual} to responed with 401"
  end
end

RSpec::Matchers.define :respond_with_402 do 
  match do |actual|
    actual.response_code 402
  end
  failure_message do |actual|
    "expected #{actual} to responed with 402"
  end
end

RSpec::Matchers.define :respond_with_PAYMENT_REQUIRED do 
  match do |actual|
    actual.response_code 402
  end
  failure_message do |actual|
    "expected #{actual} to responed with 402"
  end
end

RSpec::Matchers.define :respond_with_payment_required do 
  match do |actual|
    actual.response_code 402
  end
  failure_message do |actual|
    "expected #{actual} to responed with 402"
  end
end

RSpec::Matchers.define :be_payment_required do 
  match do |actual|
    actual.response_code 402
  end
  failure_message do |actual|
    "expected #{actual} to responed with 402"
  end
end

RSpec::Matchers.define :respond_with_403 do 
  match do |actual|
    actual.response_code 403
  end
  failure_message do |actual|
    "expected #{actual} to responed with 403"
  end
end

RSpec::Matchers.define :respond_with_FORBIDDEN do 
  match do |actual|
    actual.response_code 403
  end
  failure_message do |actual|
    "expected #{actual} to responed with 403"
  end
end

RSpec::Matchers.define :respond_with_forbidden do 
  match do |actual|
    actual.response_code 403
  end
  failure_message do |actual|
    "expected #{actual} to responed with 403"
  end
end

RSpec::Matchers.define :be_forbidden do 
  match do |actual|
    actual.response_code 403
  end
  failure_message do |actual|
    "expected #{actual} to responed with 403"
  end
end

RSpec::Matchers.define :respond_with_404 do 
  match do |actual|
    actual.response_code 404
  end
  failure_message do |actual|
    "expected #{actual} to responed with 404"
  end
end

RSpec::Matchers.define :respond_with_NOT_FOUND do 
  match do |actual|
    actual.response_code 404
  end
  failure_message do |actual|
    "expected #{actual} to responed with 404"
  end
end

RSpec::Matchers.define :respond_with_not_found do 
  match do |actual|
    actual.response_code 404
  end
  failure_message do |actual|
    "expected #{actual} to responed with 404"
  end
end

RSpec::Matchers.define :be_not_found do 
  match do |actual|
    actual.response_code 404
  end
  failure_message do |actual|
    "expected #{actual} to responed with 404"
  end
end

RSpec::Matchers.define :respond_with_405 do 
  match do |actual|
    actual.response_code 405
  end
  failure_message do |actual|
    "expected #{actual} to responed with 405"
  end
end

RSpec::Matchers.define :respond_with_METHOD_NOT_ALLOWED do 
  match do |actual|
    actual.response_code 405
  end
  failure_message do |actual|
    "expected #{actual} to responed with 405"
  end
end

RSpec::Matchers.define :respond_with_method_not_allowed do 
  match do |actual|
    actual.response_code 405
  end
  failure_message do |actual|
    "expected #{actual} to responed with 405"
  end
end

RSpec::Matchers.define :be_method_not_allowed do 
  match do |actual|
    actual.response_code 405
  end
  failure_message do |actual|
    "expected #{actual} to responed with 405"
  end
end

RSpec::Matchers.define :respond_with_406 do 
  match do |actual|
    actual.response_code 406
  end
  failure_message do |actual|
    "expected #{actual} to responed with 406"
  end
end

RSpec::Matchers.define :respond_with_NOT_ACCEPTABLE do 
  match do |actual|
    actual.response_code 406
  end
  failure_message do |actual|
    "expected #{actual} to responed with 406"
  end
end

RSpec::Matchers.define :respond_with_not_acceptable do 
  match do |actual|
    actual.response_code 406
  end
  failure_message do |actual|
    "expected #{actual} to responed with 406"
  end
end

RSpec::Matchers.define :be_not_acceptable do 
  match do |actual|
    actual.response_code 406
  end
  failure_message do |actual|
    "expected #{actual} to responed with 406"
  end
end

RSpec::Matchers.define :respond_with_407 do 
  match do |actual|
    actual.response_code 407
  end
  failure_message do |actual|
    "expected #{actual} to responed with 407"
  end
end

RSpec::Matchers.define :respond_with_PROXY_AUTHENTICATION_REQUIRED do 
  match do |actual|
    actual.response_code 407
  end
  failure_message do |actual|
    "expected #{actual} to responed with 407"
  end
end

RSpec::Matchers.define :respond_with_proxy_authentication_required do 
  match do |actual|
    actual.response_code 407
  end
  failure_message do |actual|
    "expected #{actual} to responed with 407"
  end
end

RSpec::Matchers.define :be_proxy_authentication_required do 
  match do |actual|
    actual.response_code 407
  end
  failure_message do |actual|
    "expected #{actual} to responed with 407"
  end
end

RSpec::Matchers.define :respond_with_408 do 
  match do |actual|
    actual.response_code 408
  end
  failure_message do |actual|
    "expected #{actual} to responed with 408"
  end
end

RSpec::Matchers.define :respond_with_REQUEST_TIMEOUT do 
  match do |actual|
    actual.response_code 408
  end
  failure_message do |actual|
    "expected #{actual} to responed with 408"
  end
end

RSpec::Matchers.define :respond_with_request_timeout do 
  match do |actual|
    actual.response_code 408
  end
  failure_message do |actual|
    "expected #{actual} to responed with 408"
  end
end

RSpec::Matchers.define :be_request_timeout do 
  match do |actual|
    actual.response_code 408
  end
  failure_message do |actual|
    "expected #{actual} to responed with 408"
  end
end

RSpec::Matchers.define :respond_with_409 do 
  match do |actual|
    actual.response_code 409
  end
  failure_message do |actual|
    "expected #{actual} to responed with 409"
  end
end

RSpec::Matchers.define :respond_with_CONFLICT do 
  match do |actual|
    actual.response_code 409
  end
  failure_message do |actual|
    "expected #{actual} to responed with 409"
  end
end

RSpec::Matchers.define :respond_with_conflict do 
  match do |actual|
    actual.response_code 409
  end
  failure_message do |actual|
    "expected #{actual} to responed with 409"
  end
end

RSpec::Matchers.define :be_conflict do 
  match do |actual|
    actual.response_code 409
  end
  failure_message do |actual|
    "expected #{actual} to responed with 409"
  end
end

RSpec::Matchers.define :respond_with_410 do 
  match do |actual|
    actual.response_code 410
  end
  failure_message do |actual|
    "expected #{actual} to responed with 410"
  end
end

RSpec::Matchers.define :respond_with_GONE do 
  match do |actual|
    actual.response_code 410
  end
  failure_message do |actual|
    "expected #{actual} to responed with 410"
  end
end

RSpec::Matchers.define :respond_with_gone do 
  match do |actual|
    actual.response_code 410
  end
  failure_message do |actual|
    "expected #{actual} to responed with 410"
  end
end

RSpec::Matchers.define :be_gone do 
  match do |actual|
    actual.response_code 410
  end
  failure_message do |actual|
    "expected #{actual} to responed with 410"
  end
end

RSpec::Matchers.define :respond_with_411 do 
  match do |actual|
    actual.response_code 411
  end
  failure_message do |actual|
    "expected #{actual} to responed with 411"
  end
end

RSpec::Matchers.define :respond_with_LENGTH_REQUIRED do 
  match do |actual|
    actual.response_code 411
  end
  failure_message do |actual|
    "expected #{actual} to responed with 411"
  end
end

RSpec::Matchers.define :respond_with_length_required do 
  match do |actual|
    actual.response_code 411
  end
  failure_message do |actual|
    "expected #{actual} to responed with 411"
  end
end

RSpec::Matchers.define :be_length_required do 
  match do |actual|
    actual.response_code 411
  end
  failure_message do |actual|
    "expected #{actual} to responed with 411"
  end
end

RSpec::Matchers.define :respond_with_412 do 
  match do |actual|
    actual.response_code 412
  end
  failure_message do |actual|
    "expected #{actual} to responed with 412"
  end
end

RSpec::Matchers.define :respond_with_PRECONDITION_FAILED do 
  match do |actual|
    actual.response_code 412
  end
  failure_message do |actual|
    "expected #{actual} to responed with 412"
  end
end

RSpec::Matchers.define :respond_with_precondition_failed do 
  match do |actual|
    actual.response_code 412
  end
  failure_message do |actual|
    "expected #{actual} to responed with 412"
  end
end

RSpec::Matchers.define :be_precondition_failed do 
  match do |actual|
    actual.response_code 412
  end
  failure_message do |actual|
    "expected #{actual} to responed with 412"
  end
end

RSpec::Matchers.define :respond_with_413 do 
  match do |actual|
    actual.response_code 413
  end
  failure_message do |actual|
    "expected #{actual} to responed with 413"
  end
end

RSpec::Matchers.define :respond_with_PAYLOAD_TOO_LARGE do 
  match do |actual|
    actual.response_code 413
  end
  failure_message do |actual|
    "expected #{actual} to responed with 413"
  end
end

RSpec::Matchers.define :respond_with_payload_too_large do 
  match do |actual|
    actual.response_code 413
  end
  failure_message do |actual|
    "expected #{actual} to responed with 413"
  end
end

RSpec::Matchers.define :be_payload_too_large do 
  match do |actual|
    actual.response_code 413
  end
  failure_message do |actual|
    "expected #{actual} to responed with 413"
  end
end

RSpec::Matchers.define :respond_with_414 do 
  match do |actual|
    actual.response_code 414
  end
  failure_message do |actual|
    "expected #{actual} to responed with 414"
  end
end

RSpec::Matchers.define :respond_with_REQUEST_URI_TOO_LONG do 
  match do |actual|
    actual.response_code 414
  end
  failure_message do |actual|
    "expected #{actual} to responed with 414"
  end
end

RSpec::Matchers.define :respond_with_request_uri_too_long do 
  match do |actual|
    actual.response_code 414
  end
  failure_message do |actual|
    "expected #{actual} to responed with 414"
  end
end

RSpec::Matchers.define :be_request_uri_too_long do 
  match do |actual|
    actual.response_code 414
  end
  failure_message do |actual|
    "expected #{actual} to responed with 414"
  end
end

RSpec::Matchers.define :respond_with_415 do 
  match do |actual|
    actual.response_code 415
  end
  failure_message do |actual|
    "expected #{actual} to responed with 415"
  end
end

RSpec::Matchers.define :respond_with_UNSUPPORTED_MEDIA_TYPE do 
  match do |actual|
    actual.response_code 415
  end
  failure_message do |actual|
    "expected #{actual} to responed with 415"
  end
end

RSpec::Matchers.define :respond_with_unsupported_media_type do 
  match do |actual|
    actual.response_code 415
  end
  failure_message do |actual|
    "expected #{actual} to responed with 415"
  end
end

RSpec::Matchers.define :be_unsupported_media_type do 
  match do |actual|
    actual.response_code 415
  end
  failure_message do |actual|
    "expected #{actual} to responed with 415"
  end
end

RSpec::Matchers.define :respond_with_416 do 
  match do |actual|
    actual.response_code 416
  end
  failure_message do |actual|
    "expected #{actual} to responed with 416"
  end
end

RSpec::Matchers.define :respond_with_REQUESTED_RANGE_NOT_SATISFIABLE do 
  match do |actual|
    actual.response_code 416
  end
  failure_message do |actual|
    "expected #{actual} to responed with 416"
  end
end

RSpec::Matchers.define :respond_with_requested_range_not_satisfiable do 
  match do |actual|
    actual.response_code 416
  end
  failure_message do |actual|
    "expected #{actual} to responed with 416"
  end
end

RSpec::Matchers.define :be_requested_range_not_satisfiable do 
  match do |actual|
    actual.response_code 416
  end
  failure_message do |actual|
    "expected #{actual} to responed with 416"
  end
end

RSpec::Matchers.define :respond_with_417 do 
  match do |actual|
    actual.response_code 417
  end
  failure_message do |actual|
    "expected #{actual} to responed with 417"
  end
end

RSpec::Matchers.define :respond_with_EXPECTATION_FAILED do 
  match do |actual|
    actual.response_code 417
  end
  failure_message do |actual|
    "expected #{actual} to responed with 417"
  end
end

RSpec::Matchers.define :respond_with_expectation_failed do 
  match do |actual|
    actual.response_code 417
  end
  failure_message do |actual|
    "expected #{actual} to responed with 417"
  end
end

RSpec::Matchers.define :be_expectation_failed do 
  match do |actual|
    actual.response_code 417
  end
  failure_message do |actual|
    "expected #{actual} to responed with 417"
  end
end

RSpec::Matchers.define :respond_with_418 do 
  match do |actual|
    actual.response_code 418
  end
  failure_message do |actual|
    "expected #{actual} to responed with 418"
  end
end

RSpec::Matchers.define :respond_with_IM_A_TEAPOT do 
  match do |actual|
    actual.response_code 418
  end
  failure_message do |actual|
    "expected #{actual} to responed with 418"
  end
end

RSpec::Matchers.define :respond_with_im_a_teapot do 
  match do |actual|
    actual.response_code 418
  end
  failure_message do |actual|
    "expected #{actual} to responed with 418"
  end
end

RSpec::Matchers.define :be_im_a_teapot do 
  match do |actual|
    actual.response_code 418
  end
  failure_message do |actual|
    "expected #{actual} to responed with 418"
  end
end

RSpec::Matchers.define :respond_with_421 do 
  match do |actual|
    actual.response_code 421
  end
  failure_message do |actual|
    "expected #{actual} to responed with 421"
  end
end

RSpec::Matchers.define :respond_with_MISDIRECTED_REQUEST do 
  match do |actual|
    actual.response_code 421
  end
  failure_message do |actual|
    "expected #{actual} to responed with 421"
  end
end

RSpec::Matchers.define :respond_with_misdirected_request do 
  match do |actual|
    actual.response_code 421
  end
  failure_message do |actual|
    "expected #{actual} to responed with 421"
  end
end

RSpec::Matchers.define :be_misdirected_request do 
  match do |actual|
    actual.response_code 421
  end
  failure_message do |actual|
    "expected #{actual} to responed with 421"
  end
end

RSpec::Matchers.define :respond_with_422 do 
  match do |actual|
    actual.response_code 422
  end
  failure_message do |actual|
    "expected #{actual} to responed with 422"
  end
end

RSpec::Matchers.define :respond_with_UNPROCESSABLE_ENTITY do 
  match do |actual|
    actual.response_code 422
  end
  failure_message do |actual|
    "expected #{actual} to responed with 422"
  end
end

RSpec::Matchers.define :respond_with_unprocessable_entity do 
  match do |actual|
    actual.response_code 422
  end
  failure_message do |actual|
    "expected #{actual} to responed with 422"
  end
end

RSpec::Matchers.define :be_unprocessable_entity do 
  match do |actual|
    actual.response_code 422
  end
  failure_message do |actual|
    "expected #{actual} to responed with 422"
  end
end

RSpec::Matchers.define :respond_with_423 do 
  match do |actual|
    actual.response_code 423
  end
  failure_message do |actual|
    "expected #{actual} to responed with 423"
  end
end

RSpec::Matchers.define :respond_with_LOCKED do 
  match do |actual|
    actual.response_code 423
  end
  failure_message do |actual|
    "expected #{actual} to responed with 423"
  end
end

RSpec::Matchers.define :respond_with_locked do 
  match do |actual|
    actual.response_code 423
  end
  failure_message do |actual|
    "expected #{actual} to responed with 423"
  end
end

RSpec::Matchers.define :be_locked do 
  match do |actual|
    actual.response_code 423
  end
  failure_message do |actual|
    "expected #{actual} to responed with 423"
  end
end

RSpec::Matchers.define :respond_with_424 do 
  match do |actual|
    actual.response_code 424
  end
  failure_message do |actual|
    "expected #{actual} to responed with 424"
  end
end

RSpec::Matchers.define :respond_with_FAILED_DEPENDENCY do 
  match do |actual|
    actual.response_code 424
  end
  failure_message do |actual|
    "expected #{actual} to responed with 424"
  end
end

RSpec::Matchers.define :respond_with_failed_dependency do 
  match do |actual|
    actual.response_code 424
  end
  failure_message do |actual|
    "expected #{actual} to responed with 424"
  end
end

RSpec::Matchers.define :be_failed_dependency do 
  match do |actual|
    actual.response_code 424
  end
  failure_message do |actual|
    "expected #{actual} to responed with 424"
  end
end

RSpec::Matchers.define :respond_with_426 do 
  match do |actual|
    actual.response_code 426
  end
  failure_message do |actual|
    "expected #{actual} to responed with 426"
  end
end

RSpec::Matchers.define :respond_with_UPGRADE_REQUIRED do 
  match do |actual|
    actual.response_code 426
  end
  failure_message do |actual|
    "expected #{actual} to responed with 426"
  end
end

RSpec::Matchers.define :respond_with_upgrade_required do 
  match do |actual|
    actual.response_code 426
  end
  failure_message do |actual|
    "expected #{actual} to responed with 426"
  end
end

RSpec::Matchers.define :be_upgrade_required do 
  match do |actual|
    actual.response_code 426
  end
  failure_message do |actual|
    "expected #{actual} to responed with 426"
  end
end

RSpec::Matchers.define :respond_with_428 do 
  match do |actual|
    actual.response_code 428
  end
  failure_message do |actual|
    "expected #{actual} to responed with 428"
  end
end

RSpec::Matchers.define :respond_with_PRECONDITION_REQUIRED do 
  match do |actual|
    actual.response_code 428
  end
  failure_message do |actual|
    "expected #{actual} to responed with 428"
  end
end

RSpec::Matchers.define :respond_with_precondition_required do 
  match do |actual|
    actual.response_code 428
  end
  failure_message do |actual|
    "expected #{actual} to responed with 428"
  end
end

RSpec::Matchers.define :be_precondition_required do 
  match do |actual|
    actual.response_code 428
  end
  failure_message do |actual|
    "expected #{actual} to responed with 428"
  end
end

RSpec::Matchers.define :respond_with_429 do 
  match do |actual|
    actual.response_code 429
  end
  failure_message do |actual|
    "expected #{actual} to responed with 429"
  end
end

RSpec::Matchers.define :respond_with_TOO_MANY_REQUESTS do 
  match do |actual|
    actual.response_code 429
  end
  failure_message do |actual|
    "expected #{actual} to responed with 429"
  end
end

RSpec::Matchers.define :respond_with_too_many_requests do 
  match do |actual|
    actual.response_code 429
  end
  failure_message do |actual|
    "expected #{actual} to responed with 429"
  end
end

RSpec::Matchers.define :be_too_many_requests do 
  match do |actual|
    actual.response_code 429
  end
  failure_message do |actual|
    "expected #{actual} to responed with 429"
  end
end

RSpec::Matchers.define :respond_with_431 do 
  match do |actual|
    actual.response_code 431
  end
  failure_message do |actual|
    "expected #{actual} to responed with 431"
  end
end

RSpec::Matchers.define :respond_with_REQUEST_HEADER_FIELDS_TOO_LARGE do 
  match do |actual|
    actual.response_code 431
  end
  failure_message do |actual|
    "expected #{actual} to responed with 431"
  end
end

RSpec::Matchers.define :respond_with_request_header_fields_too_large do 
  match do |actual|
    actual.response_code 431
  end
  failure_message do |actual|
    "expected #{actual} to responed with 431"
  end
end

RSpec::Matchers.define :be_request_header_fields_too_large do 
  match do |actual|
    actual.response_code 431
  end
  failure_message do |actual|
    "expected #{actual} to responed with 431"
  end
end

RSpec::Matchers.define :respond_with_444 do 
  match do |actual|
    actual.response_code 444
  end
  failure_message do |actual|
    "expected #{actual} to responed with 444"
  end
end

RSpec::Matchers.define :respond_with_CONNECTION_CLOSED_WITHOUT_RESPONSE do 
  match do |actual|
    actual.response_code 444
  end
  failure_message do |actual|
    "expected #{actual} to responed with 444"
  end
end

RSpec::Matchers.define :respond_with_connection_closed_without_response do 
  match do |actual|
    actual.response_code 444
  end
  failure_message do |actual|
    "expected #{actual} to responed with 444"
  end
end

RSpec::Matchers.define :be_connection_closed_without_response do 
  match do |actual|
    actual.response_code 444
  end
  failure_message do |actual|
    "expected #{actual} to responed with 444"
  end
end

RSpec::Matchers.define :respond_with_451 do 
  match do |actual|
    actual.response_code 451
  end
  failure_message do |actual|
    "expected #{actual} to responed with 451"
  end
end

RSpec::Matchers.define :respond_with_UNAVAILABLE_FOR_LEGAL_REASONS do 
  match do |actual|
    actual.response_code 451
  end
  failure_message do |actual|
    "expected #{actual} to responed with 451"
  end
end

RSpec::Matchers.define :respond_with_unavailable_for_legal_reasons do 
  match do |actual|
    actual.response_code 451
  end
  failure_message do |actual|
    "expected #{actual} to responed with 451"
  end
end

RSpec::Matchers.define :be_unavailable_for_legal_reasons do 
  match do |actual|
    actual.response_code 451
  end
  failure_message do |actual|
    "expected #{actual} to responed with 451"
  end
end

RSpec::Matchers.define :respond_with_499 do 
  match do |actual|
    actual.response_code 499
  end
  failure_message do |actual|
    "expected #{actual} to responed with 499"
  end
end

RSpec::Matchers.define :respond_with_CLIENT_CLOSED_REQUEST do 
  match do |actual|
    actual.response_code 499
  end
  failure_message do |actual|
    "expected #{actual} to responed with 499"
  end
end

RSpec::Matchers.define :respond_with_client_closed_request do 
  match do |actual|
    actual.response_code 499
  end
  failure_message do |actual|
    "expected #{actual} to responed with 499"
  end
end

RSpec::Matchers.define :be_client_closed_request do 
  match do |actual|
    actual.response_code 499
  end
  failure_message do |actual|
    "expected #{actual} to responed with 499"
  end
end

RSpec::Matchers.define :respond_with_500 do 
  match do |actual|
    actual.response_code 500
  end
  failure_message do |actual|
    "expected #{actual} to responed with 500"
  end
end

RSpec::Matchers.define :respond_with_INTERNAL_SERVER_ERROR do 
  match do |actual|
    actual.response_code 500
  end
  failure_message do |actual|
    "expected #{actual} to responed with 500"
  end
end

RSpec::Matchers.define :respond_with_internal_server_error do 
  match do |actual|
    actual.response_code 500
  end
  failure_message do |actual|
    "expected #{actual} to responed with 500"
  end
end

RSpec::Matchers.define :be_internal_server_error do 
  match do |actual|
    actual.response_code 500
  end
  failure_message do |actual|
    "expected #{actual} to responed with 500"
  end
end

RSpec::Matchers.define :respond_with_501 do 
  match do |actual|
    actual.response_code 501
  end
  failure_message do |actual|
    "expected #{actual} to responed with 501"
  end
end

RSpec::Matchers.define :respond_with_NOT_IMPLEMENTED do 
  match do |actual|
    actual.response_code 501
  end
  failure_message do |actual|
    "expected #{actual} to responed with 501"
  end
end

RSpec::Matchers.define :respond_with_not_implemented do 
  match do |actual|
    actual.response_code 501
  end
  failure_message do |actual|
    "expected #{actual} to responed with 501"
  end
end

RSpec::Matchers.define :be_not_implemented do 
  match do |actual|
    actual.response_code 501
  end
  failure_message do |actual|
    "expected #{actual} to responed with 501"
  end
end

RSpec::Matchers.define :respond_with_502 do 
  match do |actual|
    actual.response_code 502
  end
  failure_message do |actual|
    "expected #{actual} to responed with 502"
  end
end

RSpec::Matchers.define :respond_with_BAD_GATEWAY do 
  match do |actual|
    actual.response_code 502
  end
  failure_message do |actual|
    "expected #{actual} to responed with 502"
  end
end

RSpec::Matchers.define :respond_with_bad_gateway do 
  match do |actual|
    actual.response_code 502
  end
  failure_message do |actual|
    "expected #{actual} to responed with 502"
  end
end

RSpec::Matchers.define :be_bad_gateway do 
  match do |actual|
    actual.response_code 502
  end
  failure_message do |actual|
    "expected #{actual} to responed with 502"
  end
end

RSpec::Matchers.define :respond_with_503 do 
  match do |actual|
    actual.response_code 503
  end
  failure_message do |actual|
    "expected #{actual} to responed with 503"
  end
end

RSpec::Matchers.define :respond_with_SERVICE_UNAVAILABLE do 
  match do |actual|
    actual.response_code 503
  end
  failure_message do |actual|
    "expected #{actual} to responed with 503"
  end
end

RSpec::Matchers.define :respond_with_service_unavailable do 
  match do |actual|
    actual.response_code 503
  end
  failure_message do |actual|
    "expected #{actual} to responed with 503"
  end
end

RSpec::Matchers.define :be_service_unavailable do 
  match do |actual|
    actual.response_code 503
  end
  failure_message do |actual|
    "expected #{actual} to responed with 503"
  end
end

RSpec::Matchers.define :respond_with_504 do 
  match do |actual|
    actual.response_code 504
  end
  failure_message do |actual|
    "expected #{actual} to responed with 504"
  end
end

RSpec::Matchers.define :respond_with_GATEWAY_TIMEOUT do 
  match do |actual|
    actual.response_code 504
  end
  failure_message do |actual|
    "expected #{actual} to responed with 504"
  end
end

RSpec::Matchers.define :respond_with_gateway_timeout do 
  match do |actual|
    actual.response_code 504
  end
  failure_message do |actual|
    "expected #{actual} to responed with 504"
  end
end

RSpec::Matchers.define :be_gateway_timeout do 
  match do |actual|
    actual.response_code 504
  end
  failure_message do |actual|
    "expected #{actual} to responed with 504"
  end
end

RSpec::Matchers.define :respond_with_505 do 
  match do |actual|
    actual.response_code 505
  end
  failure_message do |actual|
    "expected #{actual} to responed with 505"
  end
end

RSpec::Matchers.define :respond_with_HTTP_VERSION_NOT_SUPPORTED do 
  match do |actual|
    actual.response_code 505
  end
  failure_message do |actual|
    "expected #{actual} to responed with 505"
  end
end

RSpec::Matchers.define :respond_with_http_version_not_supported do 
  match do |actual|
    actual.response_code 505
  end
  failure_message do |actual|
    "expected #{actual} to responed with 505"
  end
end

RSpec::Matchers.define :be_http_version_not_supported do 
  match do |actual|
    actual.response_code 505
  end
  failure_message do |actual|
    "expected #{actual} to responed with 505"
  end
end

RSpec::Matchers.define :respond_with_506 do 
  match do |actual|
    actual.response_code 506
  end
  failure_message do |actual|
    "expected #{actual} to responed with 506"
  end
end

RSpec::Matchers.define :respond_with_VARIANT_ALSO_NEGOTIATES do 
  match do |actual|
    actual.response_code 506
  end
  failure_message do |actual|
    "expected #{actual} to responed with 506"
  end
end

RSpec::Matchers.define :respond_with_variant_also_negotiates do 
  match do |actual|
    actual.response_code 506
  end
  failure_message do |actual|
    "expected #{actual} to responed with 506"
  end
end

RSpec::Matchers.define :be_variant_also_negotiates do 
  match do |actual|
    actual.response_code 506
  end
  failure_message do |actual|
    "expected #{actual} to responed with 506"
  end
end

RSpec::Matchers.define :respond_with_507 do 
  match do |actual|
    actual.response_code 507
  end
  failure_message do |actual|
    "expected #{actual} to responed with 507"
  end
end

RSpec::Matchers.define :respond_with_INSUFFICIENT_STORAGE do 
  match do |actual|
    actual.response_code 507
  end
  failure_message do |actual|
    "expected #{actual} to responed with 507"
  end
end

RSpec::Matchers.define :respond_with_insufficient_storage do 
  match do |actual|
    actual.response_code 507
  end
  failure_message do |actual|
    "expected #{actual} to responed with 507"
  end
end

RSpec::Matchers.define :be_insufficient_storage do 
  match do |actual|
    actual.response_code 507
  end
  failure_message do |actual|
    "expected #{actual} to responed with 507"
  end
end

RSpec::Matchers.define :respond_with_508 do 
  match do |actual|
    actual.response_code 508
  end
  failure_message do |actual|
    "expected #{actual} to responed with 508"
  end
end

RSpec::Matchers.define :respond_with_LOOP_DETECTED do 
  match do |actual|
    actual.response_code 508
  end
  failure_message do |actual|
    "expected #{actual} to responed with 508"
  end
end

RSpec::Matchers.define :respond_with_loop_detected do 
  match do |actual|
    actual.response_code 508
  end
  failure_message do |actual|
    "expected #{actual} to responed with 508"
  end
end

RSpec::Matchers.define :be_loop_detected do 
  match do |actual|
    actual.response_code 508
  end
  failure_message do |actual|
    "expected #{actual} to responed with 508"
  end
end

RSpec::Matchers.define :respond_with_510 do 
  match do |actual|
    actual.response_code 510
  end
  failure_message do |actual|
    "expected #{actual} to responed with 510"
  end
end

RSpec::Matchers.define :respond_with_NOT_EXTENDED do 
  match do |actual|
    actual.response_code 510
  end
  failure_message do |actual|
    "expected #{actual} to responed with 510"
  end
end

RSpec::Matchers.define :respond_with_not_extended do 
  match do |actual|
    actual.response_code 510
  end
  failure_message do |actual|
    "expected #{actual} to responed with 510"
  end
end

RSpec::Matchers.define :be_not_extended do 
  match do |actual|
    actual.response_code 510
  end
  failure_message do |actual|
    "expected #{actual} to responed with 510"
  end
end

RSpec::Matchers.define :respond_with_511 do 
  match do |actual|
    actual.response_code 511
  end
  failure_message do |actual|
    "expected #{actual} to responed with 511"
  end
end

RSpec::Matchers.define :respond_with_NETWORK_AUTHENTICATION_REQUIRED do 
  match do |actual|
    actual.response_code 511
  end
  failure_message do |actual|
    "expected #{actual} to responed with 511"
  end
end

RSpec::Matchers.define :respond_with_network_authentication_required do 
  match do |actual|
    actual.response_code 511
  end
  failure_message do |actual|
    "expected #{actual} to responed with 511"
  end
end

RSpec::Matchers.define :be_network_authentication_required do 
  match do |actual|
    actual.response_code 511
  end
  failure_message do |actual|
    "expected #{actual} to responed with 511"
  end
end

RSpec::Matchers.define :respond_with_599 do 
  match do |actual|
    actual.response_code 599
  end
  failure_message do |actual|
    "expected #{actual} to responed with 599"
  end
end

RSpec::Matchers.define :respond_with_NETWORK_CONNECT_TIMEOUT_ERROR do 
  match do |actual|
    actual.response_code 599
  end
  failure_message do |actual|
    "expected #{actual} to responed with 599"
  end
end

RSpec::Matchers.define :respond_with_network_connect_timeout_error do 
  match do |actual|
    actual.response_code 599
  end
  failure_message do |actual|
    "expected #{actual} to responed with 599"
  end
end

RSpec::Matchers.define :be_network_connect_timeout_error do 
  match do |actual|
    actual.response_code 599
  end
  failure_message do |actual|
    "expected #{actual} to responed with 599"
  end
end

