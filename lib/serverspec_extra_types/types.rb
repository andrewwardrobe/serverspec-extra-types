# frozen_string_literal: true

require 'serverspec_extra_types/types/docker_container'
require 'serverspec/helper/type'

module Serverspec
  module Helper
    module Type
      types = %w[docker_service docker_node rabbitmq_vhost_policy rabbitmq_node_list rabbitmq_vhost_list
                 rabbitmq_user_permission consul_service consul_service_list consul_node consul_node_list
                 curl]

      types.each do |type|
        require "serverspec_extra_types/types/#{type}"
        define_method type do |*_args|
          eval "Serverspec::Type::#{type.to_camel_case}.new(*_args)"
        end
      end
    end
  end
end
