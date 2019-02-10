shared_examples 'HTTP::2XX' do
  describe curl('http://localhost:18754/200') do
    it { should respond_with_200 }
    it { should respond_with_OK }
    it { should respond_with_ok }
    it { should be_ok }
  end
  describe curl('http://localhost:18754/201') do
    it { should respond_with_201 }
    it { should respond_with_CREATED }
    it { should respond_with_created }
    it { should be_created }
  end
  describe curl('http://localhost:18754/202') do
    it { should respond_with_202 }
    it { should respond_with_ACCEPTED }
    it { should respond_with_accepted }
    it { should be_accepted }
  end
  describe curl('http://localhost:18754/203') do
    it { should respond_with_203 }
    it { should respond_with_NON_AUTHORITATIVE_INFORMATION }
    it { should respond_with_non_authoritative_information }
    it { should be_non_authoritative_information }
  end
  describe curl('http://localhost:18754/204') do
    it { should respond_with_204 }
    it { should respond_with_NO_CONTENT }
    it { should respond_with_no_content }
    it { should be_no_content }
  end
  describe curl('http://localhost:18754/205') do
    it { should respond_with_205 }
    it { should respond_with_RESET_CONTENT }
    it { should respond_with_reset_content }
    it { should be_reset_content }
  end
  describe curl('http://localhost:18754/206') do
    it { should respond_with_206 }
    it { should respond_with_PARTIAL_CONTENT }
    it { should respond_with_partial_content }
    it { should be_partial_content }
  end
  describe curl('http://localhost:18754/207') do
    it { should respond_with_207 }
    it { should respond_with_MULTI_STATUS }
    it { should respond_with_multi_status }
    it { should be_multi_status }
  end
  describe curl('http://localhost:18754/208') do
    it { should respond_with_208 }
    it { should respond_with_ALREADY_REPORTED }
    it { should respond_with_already_reported }
    it { should be_already_reported }
  end
  describe curl('http://localhost:18754/226') do
    it { should respond_with_226 }
    it { should respond_with_IM_USED }
    it { should respond_with_im_used }
    it { should be_im_used }
 end
end

