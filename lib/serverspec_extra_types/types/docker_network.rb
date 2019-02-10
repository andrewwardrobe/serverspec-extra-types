# frozen_string_literal: true

require 'serverspec'

module Serverspec::Type
  # This class  monkey patches serverspec's docker container type with some more method to be used in matchers
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
      self.has_driver? 'overlay'
    end

    def bridge?
      self.has_driver? 'bridge'
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

    def IPv6_enabled?
      inspection['EnableIPv6']
    end

    def internal?
      inspection['Internal']
    end

    def external?
      !inspection['Internal']
    end

    def ingress?
      inspection['Ingress']
    end

    private

    def get_inspection
      @get_inspection ||= @runner.run_command("docker network inspect #{@name}")
    end
  end
end
