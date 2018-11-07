RSpec::Matchers.define :have_label do |label|
  chain :with_value do |_value|
    @value = _value
  end

  match do |actual|
    if !@value
      actual.labels.key? label
    else
      actual.has_label?(label, @value)
    end
  end
  description do
    if !@value
      "have label #{label}"
    else
      "have label #{label} with value #{@value}"
      end
  end
  failure_message do |actual|
    if !@value
      "expected #{actual.labels} to have key #{label}"
    else
      "expected #{actual.label(label)[0]} to have value #{@value}, it had #{actual.label(label)[1]} "
    end
  end
end
