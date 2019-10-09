require 'serverspec_extra_types/types/kubernetes_base'

module Serverspec::Type
  class KubernetesNode < KubernetesBase

    def initialize(name = nil, options = {})
      super(name, options)
      @name = name
    end

    def name
      inspection['metadata']['name']
    end

    def has_name?(name)
      self.name == name
    end

    def exist?
      get_inspection.success?
    end

    # rubocop:disable Naming/AccessorMethodName
    def get_inspection
      command = "kubectl get node #{@name} -o json"
      @get_inspection ||= @runner.run_command(command)
    end
  end
end