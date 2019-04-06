# frozen_string_literal: true

require 'serverspec'
require 'serverspec/type/base'
require 'multi_json'
require 'serverspec_extra_types/helpers/properties'
require 'serverspec_extra_types/types/api_base'

module Serverspec::Type
  class JenkinsBase < ApiBase
    def initialize(name = nil, options = {})
      super(name, options)
      @user = ENV['JENKINS_USER'] || nil
      @password = ENV['JENKINS_PASSWORD'] || nil
      @url_base = property[:variables][:jenkins_url] || 'http://localhost:8080'
    end

    def exist?
      get_inspection.success?
    end
  end
end
