# frozen_string_literal: false

require 'serverspec_extra_types/helpers/properties'
require 'serverspec_extra_types/types/api_base'

module Serverspec::Type
  class Curl < ApiBase
    def initialize(name = nil, options = {})
      super(name, options)
      @url_base = name
    end

    def url
      @url_base
    end

    def inspection
      @inspection ||= get_inspection
    end

    def body
      inspection[:body]
    end

    def response_code
      inspection[:http_code]
    end

    def http_code
      response_code
    end

    def content_type
      inspection[:content_type]
    end

    def size_download
      inspection[:size_download]
    end

    def size_upload
      inspection[:size_upload]
    end

    private

    def extra_args
      "-w \"#{output_format}\""
    end

    def get_inspection
      command = curl_command
      unless @get_inspection
        (body, rest) = @runner.run_command(command).stdout.split('!!SS_URL_YAML!!')
        result = YAML.safe_load(rest).each_with_object({}) { |(k, v), memo| memo[k.to_sym] = v; }
        result[:body] = body
        @get_inspection = result
      end

      @get_inspection
    end

    def output_format
      out = '!!SS_URL_YAML!!---\\n'
      out << 'http_code: %{http_code}\\n'
      out << 'content_type: %{content_type}\\n'
      out << 'size_download: %{size_download}\\n'
      out << 'size_upload: %{size_upload}\\n'
      out
    end
  end
end
