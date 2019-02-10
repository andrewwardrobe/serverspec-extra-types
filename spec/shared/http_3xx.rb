shared_examples 'HTTP::3XX' do
  describe curl('http://localhost:18754/300') do
    it { should respond_with_300 }
    it { should respond_with_MULTIPLE_CHOICES }
    it { should respond_with_multiple_choices }
    it { should be_multiple_choices }
  end
  describe curl('http://localhost:18754/301') do
    it { should respond_with_301 }
    it { should respond_with_MOVED_PERMANENTLY }
    it { should respond_with_moved_permanently }
    it { should be_moved_permanently }
  end
  describe curl('http://localhost:18754/302') do
    it { should respond_with_302 }
    it { should respond_with_FOUND }
    it { should respond_with_found }
    it { should be_found }
  end
  describe curl('http://localhost:18754/303') do
    it { should respond_with_303 }
    it { should respond_with_SEE_OTHER }
    it { should respond_with_see_other }
    it { should be_see_other }
  end
  describe curl('http://localhost:18754/304') do
    it { should respond_with_304 }
    it { should respond_with_NOT_MODIFIED }
    it { should respond_with_not_modified }
    it { should be_not_modified }
  end
  describe curl('http://localhost:18754/305') do
    it { should respond_with_305 }
    it { should respond_with_USE_PROXY }
    it { should respond_with_use_proxy }
    it { should be_use_proxy }
  end
  describe curl('http://localhost:18754/307') do
    it { should respond_with_307 }
    it { should respond_with_TEMPORARY_REDIRECT }
    it { should respond_with_temporary_redirect }
    it { should be_temporary_redirect }
  end
  describe curl('http://localhost:18754/308') do
    it { should respond_with_308 }
    it { should respond_with_PERMANENT_REDIRECT }
    it { should respond_with_permanent_redirect }
    it { should be_permanent_redirect }
 end
end

