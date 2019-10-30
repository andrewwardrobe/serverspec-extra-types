# frozen_string_literal: true

require 'serverspec'

require 'multi_json'
require 'serverspec_extra_types/helpers/properties'

module Serverspec::Type
  class KubernetesBase < Base
    def initialize(name = nil, options = {})
      super(name, options)
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
      begin
      @inspection ||= ::MultiJson.load(get_inspection.stdout)
      rescue MultiJson::ParseError => ex
        @inspection ||= {}
      end
    end

    def name
      inspection.dig('metadata', 'name')
    end

    def has_name?(name)
      self.name == name
    end

    def namespace
      inspection.dig('metadata','namespace')
    end

    def has_namespace?(name)
      self.namespace == name
    end

    def labels
      inspection.dig('metadata', 'labels')
    end

    def has_label?(name, value = nil)
      if value
        labels.find {|label, val| label == name && val == value}
      else
        labels.find {|label, val| label == name}
      end

    end


    private

    def extra_args
      ''
    end

     # rubocop:disable Naming/AccessorMethodName
    def get_inspection
      command = 'kubectl version -o json'
      @get_inspection ||= @runner.run_command(command)
    end
    # rubocop:enable Naming/AccessorMethodName
  end
end
