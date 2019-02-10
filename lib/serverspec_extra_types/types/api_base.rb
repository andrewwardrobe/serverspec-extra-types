# frozen_string_literal: true

require 'serverspec'
require 'serverspec/type/base'
require 'multi_json'
require 'serverspec_extra_types/helpers/properties'

module Serverspec::Type
  class ApiBase < Base
    def initialize(name = nil, options = {})
      super(name, options)
      @insecure = options[:insecure]
      @redirects = options[:follow_redirects]
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
      @inspection ||= ::MultiJson.load(get_inspection.stdout)
    end

    private

    def extra_args
      ""
    end

    def curl_command
      "curl #{extra_args} -s #{url} #{@insecure ? '-k' : ''} #{@redirects ? '-L' : ''}"
    end

    def get_inspection
      command = curl_command
      @get_inspection ||= @runner.run_command(command)
    end
  end
end
