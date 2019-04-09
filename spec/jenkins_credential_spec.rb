# frozen_string_literal: true

require 'spec_helper'

Rspec.context 'Jenkins Credentials' do
  include JenkinsHelper,SshHelper
  before(:all) do
    start_jenkins_container
    install_jenkins_plugin('ssh-credentials')
    install_jenkins_plugin('plain-credentials')
    install_jenkins_plugin('aws-credentials')
    install_jenkins_plugin('gitlab-plugin')
    create_user_pass_credential('userpass', 'test', 'password', 'Username and Password Credential')
    create_string_credential('string', 'password', 'String Credential')
    create_aws_credential('aws', 'ABDE123RF', 'jkhkjhkjefhqkwjehflkjhfkj', 'String Credential')
    create_gitlab_credential('gitlabToken', 'wJf9pJDffyt6576fhgfk', 'Gitlab')
    create_private_key_credential('privateKey', 'andrew', sshkey, 'password', 'private key')
  end

  describe jenkins_credential('userpass') do
    it { should exist }
    it { should have_description 'Username and Password Credential' }
    it { should be_username_with_password }
    it { should have_display_name 'test/****** (Username and Password Credential)'}
  end

  describe jenkins_credential('string') do
    it { should exist }
    it { should be_secret_text }
  end

  describe jenkins_credential('aws') do
    it { should exist }
    it { should be_aws_credential }
  end

  describe jenkins_credential('gitlabToken') do
    it { should exist }
    it { should have_description 'Gitlab' }
    it { should be_gitlab_api_token }
  end

  describe jenkins_credential('privateKey') do
    it { should exist }
    it { should have_description 'private key' }
    it { should be_ssh_private_key }

  end

  after(:all) do
    #stop_jenkins_container
  end
end

