#!/usr/bin/env ruby


def example(matcher)
  <<~HEREDOC
    ##### #{matcher}
    ```ruby
    describe curl("https://example.org") do
      it { should #{matcher} }
    end
    ```

  HEREDOC
end

def grep_matchers(file)
  lines = []
  File.foreach(file) do |line|
    match = /Matchers\.define :([a-zA-Z0-9_]*) do/.match(line)
    next unless match
    lines << match[1]
  end
  lines
end

def do_http_matcher_docs(num, file)
  file.write "### HTTP_#{num}xx matchers <a name=\"http_#{num}xxx\"></a>\n\n"
  grep_matchers("lib/serverspec_extra_types/matchers/http_#{num}xx.rb").each do |matcher|
    file.write example(matcher)
  end
end


def do_tests(errcode, matcher, file)
  file.write "  describe curl('http://localhost:18754/#{errcode}') do\n"
  file.write "    it { should #{matcher} }\n"
  file.write "  end\n\n"
end

File.open('http_matchers.md', 'w') do |file|
  file.write "## HTTP matchers\n\n"
  (1..5).to_a.each do |num|
    file.write "[HTTP_#{num}XX](#http_#{num}xx) | "
  end
  file.write("\n")
  (1..5).to_a.each do |num|
    do_http_matcher_docs(num,file)
  end
end

(1..5).to_a.each do |num|
  File.open("spec/shared/http_#{num}xx.rb", 'w') do |file|
    errcode = "#{num}00"
    file.write "shared_examples 'HTTP::#{num}XX' do\n"
    grep_matchers("lib/serverspec_extra_types/matchers/http_#{num}xx.rb").each do |matcher|
      match = /_([0-9]{3})$/.match(matcher)
      if match
        file.write "  end\n" if match[1] != errcode
        errcode = match[1]
        file.write "  describe curl('http://localhost:18754/#{errcode}') do\n"
      end
      file.write "    it { should #{matcher} }\n"
    end
    file.write " end\n"
    file.write "end\n\n"
  end
end
