shared_examples 'HTTP::5XX' do
  describe curl('http://localhost:18754/500') do
    it { should respond_with_500 }
    it { should respond_with_INTERNAL_SERVER_ERROR }
    it { should respond_with_internal_server_error }
    it { should be_internal_server_error }
  end
  describe curl('http://localhost:18754/501') do
    it { should respond_with_501 }
    it { should respond_with_NOT_IMPLEMENTED }
    it { should respond_with_not_implemented }
    it { should be_not_implemented }
  end
  describe curl('http://localhost:18754/502') do
    it { should respond_with_502 }
    it { should respond_with_BAD_GATEWAY }
    it { should respond_with_bad_gateway }
    it { should be_bad_gateway }
  end
  describe curl('http://localhost:18754/503') do
    it { should respond_with_503 }
    it { should respond_with_SERVICE_UNAVAILABLE }
    it { should respond_with_service_unavailable }
    it { should be_service_unavailable }
  end
  describe curl('http://localhost:18754/504') do
    it { should respond_with_504 }
    it { should respond_with_GATEWAY_TIMEOUT }
    it { should respond_with_gateway_timeout }
    it { should be_gateway_timeout }
  end
  describe curl('http://localhost:18754/505') do
    it { should respond_with_505 }
    it { should respond_with_HTTP_VERSION_NOT_SUPPORTED }
    it { should respond_with_http_version_not_supported }
    it { should be_http_version_not_supported }
  end
  describe curl('http://localhost:18754/506') do
    it { should respond_with_506 }
    it { should respond_with_VARIANT_ALSO_NEGOTIATES }
    it { should respond_with_variant_also_negotiates }
    it { should be_variant_also_negotiates }
  end
  describe curl('http://localhost:18754/507') do
    it { should respond_with_507 }
    it { should respond_with_INSUFFICIENT_STORAGE }
    it { should respond_with_insufficient_storage }
    it { should be_insufficient_storage }
  end
  describe curl('http://localhost:18754/508') do
    it { should respond_with_508 }
    it { should respond_with_LOOP_DETECTED }
    it { should respond_with_loop_detected }
    it { should be_loop_detected }
  end
  describe curl('http://localhost:18754/510') do
    it { should respond_with_510 }
    it { should respond_with_NOT_EXTENDED }
    it { should respond_with_not_extended }
    it { should be_not_extended }
  end
  describe curl('http://localhost:18754/511') do
    it { should respond_with_511 }
    it { should respond_with_NETWORK_AUTHENTICATION_REQUIRED }
    it { should respond_with_network_authentication_required }
    it { should be_network_authentication_required }
  end
  describe curl('http://localhost:18754/599') do
    it { should respond_with_599 }
    it { should respond_with_NETWORK_CONNECT_TIMEOUT_ERROR }
    it { should respond_with_network_connect_timeout_error }
    it { should be_network_connect_timeout_error }
 end
end

