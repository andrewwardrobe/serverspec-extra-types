# frozen_string_literal: true

RSpec::Matchers.define :have_image_sha do |sha|
  match do |actual|
    actual['Image'] == sha
  end
end
