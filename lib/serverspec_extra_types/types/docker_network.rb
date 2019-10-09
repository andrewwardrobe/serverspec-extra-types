# frozen_string_literal: true

require 'serverspec'

module Serverspec::Type
  class DockerNetwork < DockerBase
    def name
      inspection['Name']
    end

    def id
      inspection['Id']
    end

    def has_scope?(scope)
      self.scope == scope
    end

    def scope
      inspection['Scope']
    end

    def local_scoped?
      scope == 'local'
    end

    def swarm_scoped?
      scope == 'swarm'
    end

    def attachable?
      inspection['Scope']
    end

    def overlay?
      has_driver? 'overlay'
    end

    def bridge?
      has_driver? 'bridge'
    end

    def driver
      inspection['Driver']
    end

    def has_driver?(driver)
      self.driver == driver
    end

    def has_label?(label, value = nil)
      if value
        label(label)[1] == value
      else
        label(label)
      end
    end

    def label(label)
      labels.find { |key, _val| key == label }
    end

    def labels
      inspection['Labels']
    end

    # rubocop:disable Naming/MethodName
    def IPv6_enabled?
      inspection['EnableIPv6']
    end
    # rubocop:enable Naming/MethodName

    def internal?
      inspection['Internal']
    end

    def external?
      !inspection['Internal']
    end

    def ingress?
      inspection['Ingress']
    end

    def exist?
      get_inspection.success?
    end

    private

    # rubocop:disable Naming/AccessorMethodName
    def get_inspection
      @get_inspection ||= @runner.run_command("docker network inspect #{@name}")
    end
    # rubocop:enable Naming/AccessorMethodName
  end
end
