# frozen_string_literal: true

require 'serverspec'
require 'serverspec/type/base'
require 'multi_json'
require 'serverspec_extra_types/helpers/properties'
require 'serverspec_extra_types/types/jenkins_base'

module Serverspec::Type
  class JenkinsJob < JenkinsBase
    def initialize(name = nil, options = {})
      super(name, options)
    end

    def inspection
      @inspection ||= ::MultiJson.load(get_inspection.stdout)
    end

    def url
      jobname = @name.gsub('/', '/job/')
      "#{@url_base}/job/#{jobname}/api/json"
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

    def directory?
      inspection['_class'] == 'com.cloudbees.hudson.plugins.folder.Folder'
    end

    def multibranch?
      inspection['_class'] == 'org.jenkinsci.plugins.workflow.multibranch.WorkflowMultiBranchProject'
    end

    def multibranch_project?
      multibranch?
    end

    def freestyle?
      inspection['_class'] == 'hudson.model.FreeStyleProject'
    end

    def freestyle_project?
      freestyle?
    end

    def maven?
      inspection['_class'] == 'hudson.maven.MavenModuleSet'
    end

    def maven_project?
      maven?
    end

    def pipeline?
      inspection['_class'] == 'org.jenkinsci.plugins.workflow.job.WorkflowJob'
    end

    def pipeline_project?
      pipeline?
    end

    def has_job_type?(type)
      inspection['_class'] == type
    end

    def has_project_type?(type)
      has_job_type?(type)
    end

    def folder?
      directory?
    end

    def has_name?(text)
      inspection['name'] == text
    end

    def has_description?(desc)
      inspection['description'] == desc
    end

    def has_full_name?(text)
      inspection['fullName'] == text
    end

    def has_job?(_job)
      inspection['jobs'].find { |job| job['name'] == job }
    end

    def has_job_count?(count)
      inspection['jobs'].length == count
    end

    def has_display_name?(text)
      inspection['displayName'] == text
    end

    def has_full_display_name?(text)
      inspection['fullDisplayName'] == text
    end

    def has_empty_job_list?
      inspection['jobs'].empty?
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
