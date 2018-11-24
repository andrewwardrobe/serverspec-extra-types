# frozen_string_literal: true

RSpec::Matchers.define :have_vhost do |vhost|
  match do |actual|
    actual.has_vhost? vhost
  end
end
