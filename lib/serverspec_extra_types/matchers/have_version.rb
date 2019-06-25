# frozen_string_literal: true

RSpec::Matchers.define :have_version do |version|
  match do |actual|
    actual.has_version? version
  end

  failure_message do |actual|
    "expected #{actual.to_s} to have version #{version} was #{actual.version}"
  end
end
