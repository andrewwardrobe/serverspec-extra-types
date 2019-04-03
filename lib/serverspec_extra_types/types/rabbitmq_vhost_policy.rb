# frozen_string_literal: true

require 'serverspec_extra_types/types/rabbitmq_base'

module Serverspec::Type
  class RabbitmqVhostPolicy < RabbitmqBase
    def initialize(name = nil, vhost = nil, options = {})
      super(name, options)
      @vhost = vhost
    end

    def inspection
      @inspection ||= ::MultiJson.load(get_inspection.stdout).find { |itm| itm['name'] == @name }
    end

    def to_s
      "RabbitMQ policy '#{@name}' on vhost '#{@vhost}'"
    end

    def url
      "#{@url_base}/api/policies/#{@vhost}"
    end

    def exist?
      !inspection.nil?
    end

    def has_ha_mode?(mode)
      inspection['definition']['ha-mode'] == mode
    end

    def ha_mode
      inspection['definition']['ha-mode']
    end

    def has_ha_sync_mode?(mode)
      inspection['definition']['ha-sync-mode'] == mode
    end

    def ha_sync_mode
      inspection['definition']['ha-sync-mode']
    end

    def has_ha_nodes?(count)
      inspection['definition']['ha-params'].to_i == count.to_i
    end

    def ha_nodes
      inspection['definition']['ha-params']
    end

    def mirror_all?
      apply_to?('all')
    end

    def mirror_queues?
      apply_to?('queues')
    end

    def mirror_exchanges?
      apply_to?('exchanges')
    end

    def apply_to?(arg)
      inspection['apply-to'] == arg
    end

    # TODO: priority method and matcher
  end
end
