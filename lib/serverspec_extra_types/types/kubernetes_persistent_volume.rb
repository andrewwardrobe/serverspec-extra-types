require 'serverspec_extra_types/types/kubernetes_base'

module Serverspec::Type
  class KubernetesPersistentVolume < KubernetesBase

    def initialize(name = nil, options = {})
      super(name, options)
      @name = name
    end


    def exist?
      get_inspection.success?
    end


    def storage_capacity
      inspection.dig('spec', 'capacity', 'storage')
    end

    def has_storage_capacity?(cap)
      storage_capacity == cap
    end

    def nfs_path
      inspection.dig('spec', 'nfs', 'path')
    end

    def nfs_server
      inspection.dig('spec', 'nfs', 'server')
    end

    def has_nfs_server?(server)
      nfs_server == server
    end

    def has_nfs_path?(path)
      nfs_path == path
    end

    def claimed_by
      inspection.dig('spec', 'claimRef', 'name')
    end

    def claimed_by?(claimName)
      claimed_by == claimName
    end

    def access_modes
      inspection.dig('spec', 'accessModes')
    end

    def has_access_mode?(mode)
      access_modes.include? mode
    end

    # rubocop:disable Naming/AccessorMethodName
    def get_inspection
      command = "kubectl get pv #{@name} -o json"
      @get_inspection ||= @runner.run_command(command)
    end
  end
end