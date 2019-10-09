# frozen_string_literal: true
require 'simplecov'
require 'bundler/setup'
require 'serverspec-extra-types'
require 'serverspec_launcher/spec_helper'
require 'rspec/matchers/fail_matchers'
require 'docker-swarm-sdk'


Dir[File.dirname(__FILE__) + '/../spec/helpers/*.rb'].each do |file|
  require 'helpers/' + File.basename(file, File.extname(file))
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  # config.disable_monkey_patching!
  config.include RSpec::Matchers::FailMatchers
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end


