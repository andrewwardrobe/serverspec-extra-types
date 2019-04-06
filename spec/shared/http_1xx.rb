# frozen_string_literal: true

shared_examples 'HTTP::1XX' do
  describe curl('http://localhost:18754/100') do
    it { should respond_with_100 }
    it { should respond_with_CONTINUE }
    it { should respond_with_continue }
    it { should be_continue }
  end
  describe curl('http://localhost:18754/101') do
    it { should respond_with_101 }
    it { should respond_with_SWITCHING_PROTOCOLS }
    it { should respond_with_switching_protocols }
    it { should be_switching_protocols }
  end
  describe curl('http://localhost:18754/102') do
    it { should respond_with_102 }
    it { should respond_with_PROCESSING }
    it { should respond_with_processing }
    it { should be_processing }
  end
end
