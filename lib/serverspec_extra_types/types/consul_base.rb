# frozen_string_literal: true

require 'serverspec'
require 'serverspec/type/base'
require 'multi_json'
require 'serverspec_extra_types/helpers/properties'
require 'serverspec_extra_types/types/api_base'

module Serverspec::Type
  class ConsulBase < ApiBase
    def initialize(name = nil, acl_token = nil, options = {})
      super(name, options)
      @token = acl_token
      @url_base = property[:variables][:consul_url] || 'http://localhost:8500'
    end

    def [](key)
      value = inspection
      key.split('.').each do |k|
        is_index = k.start_with?('[') && k.end_with?(']')
        value = value[is_index ? k[1..-2].to_i : k]
      end
      value
    end

    def url
      @url_base
    end

    def inspection
      puts get_inspection.stdout
      puts get_inspection.stderr
      @inspection ||= ::MultiJson.load(get_inspection.stdout)[0]
    end

    private

    def extra_args
      @token ? "--header 'X-Consul-Token: #{@token}'" : ''
    end

    # rubocop:disable Naming/AccessorMethodName
    def get_inspection
      command = curl_command
      @get_inspection ||= @runner.run_command(command)
    end
  end
end
