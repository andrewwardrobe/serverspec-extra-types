# frozen_string_literal: true

require 'serverspec_extra_types/types/rabbitmq_base'

module Serverspec::Type
  class RabbitmqNodeList < RabbitmqBase
    def url
      "#{@url_base}/api/nodes"
    end

    def to_s
      'RabbitMQ node list'
    end

    def inspection
      @inspection ||= ::MultiJson.load(get_inspection.stdout)
    end
  end
end
