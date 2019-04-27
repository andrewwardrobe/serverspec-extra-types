def matcher_description(name:, subject:, description: nil, chain: nil, chain_description: nil)
  description ||= name.tr('_', ' ')
  chaindesc = if chain && chain_description
                chain_description
              elsif chain
                chain.gsub(/(_|\()/, ' ').tr(')', '').tr('.', ' ')
              end
  desc = "#{description}#{chaindesc ? ' ' + chaindesc : ''}"
  it "have a description of \"#{desc}\"#{" when chained with #{chain}" if chain}" do
    matcher_string = "#{name}#{chain ? ".#{chain}" : ''}"
    matcher = eval matcher_string
    matcher.matches?(subject)
    expect(matcher.description).to eq desc
  end
end

def matcher_fail_message(name:, subject:, message:, description: nil)
  description ||= "fail with #{message}"
  it "should #{description}" do
    expect {
      matcher = eval(name)
      expect(subject).to matcher
    }.to fail_with(message)
  end
end

def matcher_failure(name:, subject:, description: nil)
  example = "should fail #{description}"
  it example do
    expect {
      matcher = eval(name)
      expect(subject).to matcher
    }.to fail
  end
end
