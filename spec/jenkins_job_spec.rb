# frozen_string_literal: true

require 'spec_helper'
SimpleCov.command_name 'serverspec:jenkins_job'
Rspec.context 'Jenkins Job' do
  include JenkinsHelper, JenkinsJobHelper

  before(:all) do
    start_jenkins_container
    install_job_plugins
    freestyle_job('freestyle')
    maven_job('maven')
    pipeline_job('pipeline')
    multibranch_job('multibranch')
    folder('folder')
    folder('emptyFolder')
    folder('DevOps','folder', 'DevOps Folder', 'DevOps')
    freestyle_job('freestyle', 'folder')
    freestyle_job('freestyle', 'folder/DevOps')
  end

  describe jenkins_job('freestyle') do
    it { should exist }
    it { should have_name 'freestyle' }
    it { should be_freestyle }
    it { should be_freestyle_project }
  end

  describe jenkins_job('maven') do
    it { should exist }
    it { should be_maven }
    it { should be_maven_project }
  end

  describe jenkins_job('pipeline') do
    it { should exist }
    it { should be_pipeline }
    it { should be_pipeline_project }
  end

  describe jenkins_job('multibranch') do
    it { should exist }
    it { should be_multibranch }
    it { should be_multibranch_project }
    it { should have_full_display_name 'multibranch'}
  end

  describe jenkins_job('folder') do
    it { should exist }
    it { should be_directory }
    it { should be_folder }
  end

  describe jenkins_job('emptyFolder') do
    it { should exist }
    it { should have_empty_job_list }
  end

  #Check for a job inside a folder
  describe jenkins_job('folder/freestyle') do
    it { should exist }
    it { should be_freestyle }
    it { should be_freestyle_project }
    it { should have_job_type('org.jenkinsci.plugins.workflow.job.WorkflowJob') }
    it { should have_project_type('org.jenkinsci.plugins.workflow.job.WorkflowJob') }
  end

  describe jenkins_job('folder/DevOps') do
    it { should exist }
    it { should be_directory }
    it { should be_folder }
    it { should have_display_name 'DevOps' }
    it { should have_description 'DevOps Folder' }
    it { should have_job 'freestyle' }
    it { should have_job_count 1 }
  end

  describe jenkins_job('folder/DevOps/freestyle') do
    it { should exist }
    it { should be_freestyle }
    it { should be_freestyle_project }
    it { should have_full_display_name 'folder » DevOps » freestyle'}
  end

  after(:all) do
    stop_jenkins_container
  end
end
