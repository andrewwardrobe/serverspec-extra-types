# frozen_string_literal: true

require 'spec_helper'
require 'rest-client'

RSpec.context 'RabbitMQ Matchers' do
  before(:all) do
    @rabbitMQ = RabbitMQHelper.new
    @rabbitMQ.start_rabbitmq_container
    @rabbitMQ.create_vhost('MyVhost')
    policy_definition = { 'ha-mode' => 'exactly', 'ha-params' => 2, 'ha-sync-mode' => 'automatic' }
    @rabbitMQ.create_policy('MyVhost', 'ha-all', '.*', policy_definition)
    @rabbitMQ.create_user('MyUser', 'somepw')
    @rabbitMQ.create_permission('MyVhost', 'MyUser', '.*', '.*', '.*')
  end

  describe command('docker ps') do
    it '' do
      puts subject.stdout
    end
  end
  describe rabbitmq_vhost_policy('ha-all', 'MyVhost') do
    it { should exist }
    it { should have_ha_mode 'exactly' }
    it { should have_ha_nodes 2 }
    it { should have_ha_sync_mode 'automatic' }
    it { should mirror_all }
    it { should apply_to 'all' }
    # TODO: tests for exchanges and queues
  end

  describe rabbitmq_node_list do
    it { should have_count(1) }
  end

  describe rabbitmq_vhost_list do
    it { should have_vhost('MyVhost') }
    it { should have_vhost('/') }
  end

  describe rabbitmq_user_permission('MyUser') do
    it { should read_from_queue('MyVhost', 'Q1') }
    it { should write_to_queue('MyVhost', 'Q1')  }
    it { should configure_queue('MyVhost', 'Q1') }
  end

  after(:all) do
    @rabbitMQ.stop_rabbitmq_container
  end
end
