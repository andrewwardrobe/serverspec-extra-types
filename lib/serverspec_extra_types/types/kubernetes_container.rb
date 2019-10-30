# frozen_string_literal: true

require 'serverspec'

require 'multi_json'
require 'serverspec_extra_types/helpers/properties'

module Serverspec::Type
  class KubernetesContainer < Base

    def initialize(data)
      @inspection = data
    end

    def [](key)
      value = inspection
      key.split('.').each do |k|
        is_index = k.start_with?('[') && k.end_with?(']')
        value = value[is_index ? k[1..-2].to_i : k]
      end
      value
    end

    def url
      @url_base
    end

    def inspection
      @inspection
    end

    def name
      inspection['name']
    end

    def has_name?(name)
      self.name == name
    end

    def image
      inspection['image']
    end

    def has_image?(img)
      image == img
    end


    def volumes
      inspection.dig('volumes')
    end

    def volume(name)
      volumes.find{ |v| v['name'] == name }
    end

    def has_volume?(name)
      volume name
    end

    def volume_mounts
      inspection.dig('volumeMounts')
    end

    def volume_mount(name)
      volume_mounts.find{ |v| v['name'] == name }
    end

    def has_volume_mount?(name, mountPath = nil)
      if mountPath
        volume_mount(name)['mountPath'] == mountPath
      else
        volume_mount name
      end
    end

    def has_environment_variable?(regex, value = nil)
      if value
        environment_variable(regex)['value'] == value
      else
        environment_variable(regex)
      end
    end

    def environment_variable(name)
      environment_variables.find { |var| var['name'] == name }
    end

    def environment_variables
      inspection['env']
    end

    def environment_variable_from(name, from)
      environment_variable(name).dig('valueFrom', from)
    end

    def has_environment_variable_from?(name, from, opts)
      environment_variable_from(name, from) == opts
    end

    def to_s
      "kubernetes container #{name}"
    end



    private

    def extra_args
      ''
    end

     # rubocop:disable Naming/AccessorMethodName

    # rubocop:enable Naming/AccessorMethodName
  end
end
