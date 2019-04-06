# frozen_string_literal: true

require 'spec_helper'

RSpec.context 'Docker Service' do
  include SwarmHelper
  before(:all) do
    attach_swarm
    create_network('jenkins')

    create_service(name: 'jenkins_jenkins', image: 'jenkins/jenkins:lts',
                   user: 'jenkins', ports: [{ "Protocol": 'tcp', "PublishedPort": 8081, "TargetPort": 8080 }],
                   placement_constraints: ['node.role == manager'], hosts: ['169.254.1.1 leek'],
                   mounts: [{ "Source": '/tmp', "Target": '/dir' }], networks: [{ "Target": 'jenkins' }], replicas: 2)

    create_service(name: 'nginx_nginx', image: 'nginx:latest', labels: { "webserver": 'true', "loadbalancer": 'true' },
                   global: true, secrets: [create_secret(name: 'nginx_certs'), create_secret(name: 'leek', filename: '/tmp/leek')],
                   configs: [create_config(name: 'nginx_conf', filename: '/tmp/nginx.conf')])
  end

  describe docker_service('jenkins_jenkins') do
    it { should exist }
    it { should have_restart_policy('any') }
    it { should have_restart_limit(3) }
    it { should have_image('jenkins/jenkins:lts') }
    it { should have_user('jenkins') }
    it { should have_network('jenkins') }
    it { should_not be_global }
    it { should be_replicated }
    it { should have_replica_count 2 }
    it { should have_placement_constraint 'node.role == manager' }
    it { should map_port('8081', '8080', 'tcp', 'ingress') }
    it { should have_host('169.254.1.1 leek') }
    it { should have_mount('/tmp', '/dir') }
    # TODO: Label Matcher
  end

  describe docker_service('nginx_nginx') do
    it { should exist }
    it { should be_global }
    it { should be_labeled('loadbalancer').with_value('true') }
    it { should be_labeled 'webserver' }
    it { should have_secret('nginx_certs') }
    it { should have_secret('leek', '/tmp/leek') }
    it { should have_config('nginx_conf', '/tmp/nginx.conf') }
  end

  after(:all) do
    delete_service('jenkins_jenkins')
    delete_service('nginx_nginx')
    delete_networks
    detach_swarm
  end
end
