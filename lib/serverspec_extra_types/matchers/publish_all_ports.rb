# frozen_string_literal: true

RSpec::Matchers.define :publish_all_ports do
  match(&:publishes_all_ports?)
end
