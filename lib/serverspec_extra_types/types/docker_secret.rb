# frozen_string_literal: true

require 'base64'
module Serverspec::Type
  class DockerSecret < DockerBase
    def exist?
      get_inspection.success?
    end

    def has_data?(data)
      self.data == data
    end

    def data
      @data ||= Base64.decode64(data64)
    end

    def has_data64?(data)
      data64 == data
    end

    def data64
      inspection['Spec']['Data']
    end

    def labels
      inspection['Spec']['Labels']
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

    def has_name?(name)
      self.name == name
    end

    def name
      inspection['Spec']['Name']
    end

    private

    # rubocop:disable Naming/AccessorMethodName
    def get_inspection
      @get_inspection ||= @runner.run_command("docker secret inspect #{@name}")
    end
    # rubocop:enable Naming/AccessorMethodName
  end
end
