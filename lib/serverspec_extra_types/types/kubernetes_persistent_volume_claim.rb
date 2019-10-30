require 'serverspec_extra_types/types/kubernetes_base'

module Serverspec::Type
  class KubernetesPersistentVolumeClaim < KubernetesBase

    def initialize(name = nil, options = {})
      super(name, options)
      @name = name
    end


    def exist?
      get_inspection.success?
    end

    def access_modes
      inspection.dig('spec', 'accessModes')
    end

    def has_access_mode?(mode)
      access_modes.include? mode
    end
    
    
    def volume_mode
        inspection.dig('spec', 'volumeMode')
    end

    def volume_name
      inspection.dig('spec', 'volumeName')
    end
    
    
    def has_volume_mode?(mode)
      volume_mode == mode
    end

    def has_volume_name?(name)
      volume_name == name
    end
    
    def phase
      inspection.dig('status', 'phase')
    end

    def have_phase?(phase)
      self.phase == phase
    end
    
    def bound?
      have_phase? 'Bound'
    end

    def storage_capacity
      inspection.dig('status', 'capacity', 'storage')
    end

    def has_storage_capacity?(cap)
      storage_capacity == cap
    end

    def storage_class
      inspection.dig('status', 'capacity', 'storage')
    end

    def has_storage_class?(cls)
      storage_class == cls
    end


    # rubocop:disable Naming/AccessorMethodName
    def get_inspection
      command = "kubectl get pvc #{@name} -o json"
      @get_inspection ||= @runner.run_command(command)
    end
  end
end