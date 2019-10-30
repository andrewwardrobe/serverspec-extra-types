# frozen_string_literal: true

require 'serverspec_extra_types/types/docker_container'
require 'serverspec/helper/type'

module Serverspec
  module Helper
    module Type
      types = %w[
                 docker_service docker_node rabbitmq_vhost_policy rabbitmq_node_list rabbitmq_vhost_list
                 rabbitmq_user_permission consul_service consul_service_list consul_node consul_node_list
                 curl nfs_export jenkins_credential jenkins_job jenkins_plugin sudo_user docker_network
                 docker_config docker_secret unix_pam nexus_repo
                 kubernetes_node kubernetes_deployment kubernetes_persistent_volume kubernetes_persistent_volume_claim
                 kubernetes_service
                ]

      types.each do |type|
        require "serverspec_extra_types/types/#{type}"
        define_method type do |*_args|
          eval "Serverspec::Type::#{type.to_camel_case}.new(*_args)"
        end

      end
      aliases = {'k8s_node': 'KubernetesNode',
                 'k8s_deployment': 'KubernetesDeployment',
                 'k8s_persistent_volume': 'KubernetesPersistentVolume',
                 'k8s_persistent_volume_claim': 'KubernetesPersistentVolumeClaim',
                 'kubernetes_pv': 'KubernetesPersistentVolume',
                 'kubernetes_pvc': 'KubernetesPersistentVolumeClaim',
                 'k8s_pv': 'KubernetesPersistentVolume',
                 'k8s_pvc': 'KubernetesPersistentVolumeClaim',
                 'k8s_service': 'KubernetesService'
      }
      aliases.each do |als, type|
        define_method als do  |*_args|
          eval "Serverspec::Type::#{type}.new(*_args)"
        end
      end
    end
  end
end
