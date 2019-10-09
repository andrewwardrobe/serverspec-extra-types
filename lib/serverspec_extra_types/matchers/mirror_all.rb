# frozen_string_literal: true

RSpec::Matchers.define :mirror_all do
  match(&:mirror_all?)
end
