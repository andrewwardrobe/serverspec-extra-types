# frozen_string_literal: true

RSpec::Matchers.define :be_labeled do |label|


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

  chain :with_value do |value|
    @value = value
  end

  failure_message do |actual|
    if !@value
      "expected #{actual.labels} to have key #{label}"
    else
      "expected #{actual.label(label)[0]} to have value #{@value}, it had #{actual.label(label)[1]} "
    end
  end
end
RSpec::Matchers.alias_matcher :have_label, :be_labeled
RSpec::Matchers.alias_matcher :be_labelled, :be_labeled