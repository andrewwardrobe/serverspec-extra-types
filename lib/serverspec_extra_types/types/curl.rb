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

    def status_code
      inspection[:stats_code]
    end

    private
    def get_inspection
      command = "curl -s  -w \"---status_code: %{http_code}\" #{url} -k"
      unless @get_inspection
        (body , rest) = @runner.run_command(command).stdout.split('---')
        result = YAML.load(rest)
        result[:body] = body
        @get_inspection = result
      end

      @get_inspection
    end
  end
end