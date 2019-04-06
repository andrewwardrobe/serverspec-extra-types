# frozen_string_literal: true

require 'serverspec'
require 'serverspec/type/base'
require 'multi_json'
require 'serverspec_extra_types/helpers/properties'
require 'serverspec_extra_types/types/jenkins_base'

module Serverspec::Type
  class JenkinsCredential < JenkinsBase
    def initialize(name = nil, options = {})
      super(name, options)
    end

    def inspection
      @inspection ||= ::MultiJson.load(get_inspection.stdout)
    end

    def url
      "#{@url_base}/credentials/store/system/domain/_/credential/#{@name}/api/json"
    end

    def length
      if inspection.is_a? String
        inspection.length
      elsif inspection.is_a? Array
        inspection.length
      else
        1
      end
    end

    def ssh_private_key?
      inspection['typeName'] == 'SSH Username with private key'
    end

    def gitlab_api_token?
      inspection['typeName'] == 'GitLab API token'
    end

    def aws_credential?
      inspection['typeName'] == 'AWS Credentials'
    end

    def username_with_password?
      inspection['typeName'] == 'Username with password'
    end

    def secret_text?
      inspection['typeName'] == 'Secret text'
    end

    def has_description?(desc)
      inspection['description'] == desc
    end

    def has_display_text?(text)
      inspection['displayText'] == text
    end

    private

    # rubocop:disable Naming/AccessorMethodName
    def get_inspection
      userpass = @user ? "-u #{@user}:#{@password}" : ''
      command = "curl -s  #{userpass} #{url} #{@insecure ? '-k' : ''} #{@redirects ? '-L' : ''}"
      @get_inspection ||= @runner.run_command(command)
    end
    # rubocop:enable Naming/AccessorMethodName
  end
end
