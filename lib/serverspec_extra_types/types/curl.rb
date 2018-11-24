require 'serverspec_extra_types/helpers/properties'
require 'serverspec_extra_types/types/api_base'

module Serverspec::Type
  class Curl < ApiBase
    def initialize(name = nil, options = {})
      super(name, options)
      @url_base = name
      @insecure = options[:insecure]
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
    def get_inspection
      command = "curl -s  -w \"#{output_format}\" #{url} #{@insecure ? '-k' : ''}"
      unless @get_inspection
        (body , rest) = @runner.run_command(command).stdout.split('!!SS_URL_YAML!!')
        result = YAML.load(rest)
        result[:body] = body
        @get_inspection = result
      end

      @get_inspection
    end

    def output_format
      out = "!!SS_URL_YAML!!---\\n"
      out << "response_code: %{http_code}\\n"
      out << "content_type: %{content_type}\\n"
      out << "size_download: %{size_download}\\n"
      out << "size_upload: %{size_upload}\\n"
      ou
    end
  end
end



=begin
  curl type for reference
  content_type
  filename_effective
  ftp_entry_path
  http_code
  http_connect
  http_version
  local_ip
  local_port
  num_connects
  num_redirects
  proxy_ssl_verify_result
  redirect_url
  remote_ip
  remote_port
  scheme
  size_download
  size_header
  size_request
  size_upload
  speed_download
  speed_upload
  ssl_verify_result
  time_appconnect
  time_connect
  time_namelookup
  time_pretransfer
  time_redirect
  time_starttransfer
  time_total
  url_effective
=end