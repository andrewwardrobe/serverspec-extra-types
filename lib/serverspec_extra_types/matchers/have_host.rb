# frozen_string_literal: false

RSpec::Matchers.define :have_host do |host|
  match do |actual|
    if !@option
      actual.has_host? host
    else
      actual.has_host? host, @option
    end
  end
  description do
    msg = "have #{host}"
    msg << " with option #{@option}" if @option
    msg
  end
  failure_message do |actual|
    msg = "expected #{actual.hosts} to contain #{host}"
    msg << " with option '#{@option}'" if @option
    msg
  end

  chain :with_option, :option
end
