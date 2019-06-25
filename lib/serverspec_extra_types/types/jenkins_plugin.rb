# frozen_string_literal: true

require 'serverspec'
require 'serverspec/type/base'
require 'multi_json'
require 'serverspec_extra_types/helpers/properties'
require 'serverspec_extra_types/types/jenkins_base'

module Serverspec::Type
  class JenkinsPlugin < JenkinsBase
    def initialize(name = nil, options = {})
      super(name, options)
    end

    def inspection
      @inspection ||= ::MultiJson.load(get_inspection.stdout)['plugins'].find { |plugin| plugin['shortName'] == @name }
    end

    def installed?(_provider = nil, version = nil)
      if version
        !inspection.nil? && inspection['version'].to_s == version.to_s
      else
        !inspection.nil?
      end
    end

    def exist?
      inspection != nil
    end

    def url
      "#{@url_base}/pluginManager/api/json?depth=1"
    end

    def has_version?(version)
      self.version == version.to_s
    end

    def version
      inspection['version'].to_s
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
