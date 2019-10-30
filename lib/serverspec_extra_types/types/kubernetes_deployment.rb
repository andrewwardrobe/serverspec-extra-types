require 'serverspec_extra_types/types/kubernetes_base'
require 'serverspec_extra_types/types/kubernetes_container'

module Serverspec::Type
  class KubernetesDeployment < KubernetesBase

    def initialize(name = nil, options = {})
      super(name, options)
      @name = name
    end


    def exist?
      get_inspection.success?
    end


    def init_container(name)
      begin
        container =  inspection.dig('spec', 'template','spec','initContainers').find{|cnt| cnt['name'] == name }
      rescue StandardError => err
        container = nil
      end
      if container
        Serverspec::Type::KubernetesContainer.new container
      else
        nil
      end
    end

    def has_init_container?(name)
      container(name)
    end

    def container(name)
      begin
        container =  inspection.dig('spec', 'template','spec','containers').find{|cnt| cnt['name'] == name }
      rescue StandardError => err
        container = nil
      end
      if container
        Serverspec::Type::KubernetesContainer.new container
      else
        nil
      end
    end

    def has_container?(name)
      container(name)
    end

    def replicas
      inspection.dig('status','replicas')
    end

    def availible_replicas
      inspection.dig('status', 'availableReplicas')
    end

    def ready_replicas
      inspection.dig('status','readyReplicas')
    end

    def updated_replicas
      inspection.dig('status', 'updatedReplicas')
    end



    # rubocop:disable Naming/AccessorMethodName
    def get_inspection
      command = "kubectl get deployment #{@name} -o json"
      @get_inspection ||= @runner.run_command(command)
    end
  end
end