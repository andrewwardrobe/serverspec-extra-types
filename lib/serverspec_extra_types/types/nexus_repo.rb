# frozen_string_literal: true

require 'serverspec'
require 'serverspec/type/base'
require 'multi_json'
require 'serverspec_extra_types/helpers/properties'
require 'serverspec_extra_types/types/api_base'

module Serverspec::Type
  class NexusRepo < ApiBase
    def initialize(name = nil, options = {})
      super(name, options)
      url =  property[:variables][:nexus_url] || 'http://localhost:8081'
      @url_base = options[:nexus_root] || url
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
      "#{@url_base}/service/rest/v1/repositories"
    end

    def exists?
      !inspection.nil? &&  !inspection.empty?
    end

    def attributes
      inspection.dig('attributes')
    end

    def has_attributes?(attributes)
      self.attributes == attributes
    end

    def name
      inspection.dig('name')
    end

    def has_name?(name)
      self.name == name
    end

    def format
      inspection.dig('format')
    end

    def has_format?(format)
      self.format == format
    end

    def repo_url
      inspection.dig('url')
    end

    def has_url?(url)
      self.url == url
    end

    def type
      inspection.dig('type')
    end

    def has_type?(type)
      self.type == type
    end


    def proxy?
      self.type == 'proxy'
    end


    def group?
      self.type == 'group'
    end


    def hosted?
      self.type == 'hosted'
    end


    def docker_repo?
      self.format == 'docker'
    end


    def a_docker_repo?
      self.format == 'docker'
    end


    def npm_repo?
      self.format == 'npm'
    end


    def an_npm_repo?
      self.format == 'npm'
    end


    def yum_repo?
      self.format == 'yum'
    end


    def a_yum_repo?
      self.format == 'yum'
    end


    def maven_repo?
      self.format == 'maven2'
    end


    def a_maven_repo?
      self.format == 'maven2'
    end


    def rubygem_repo?
      self.format == 'rubygems'
    end


    def a_rubygem_repo?
      self.format == 'rubygems'
    end


    def nuget_repo?
      self.format == 'nuget'
    end


    def an_nuget_repo?
      self.format == 'nuget'
    end

    def proxy
      inspection.dig('attributes' ,'proxy' ,'remoteUrl')
    end

    def has_proxy?(proxy)
      self.proxy == proxy
    end


    def inspection
      begin
        @inspection ||= ::MultiJson.load(get_inspection.stdout).find{|repo| repo['name'] == @name }
      rescue MultiJson::ParseError => ex
        @inspection ||= {}
      end
    end

    private

    def extra_args
      ""
    end

    # rubocop:disable Naming/AccessorMethodName
    def get_inspection
      command = curl_command
      @get_inspection ||= @runner.run_command(command)
    end
    # rubocop:enable Naming/AccessorMethodName

  end
end
