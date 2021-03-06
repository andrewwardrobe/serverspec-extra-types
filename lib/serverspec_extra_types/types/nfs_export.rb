# frozen_string_literal: false

require 'serverspec'
require 'serverspec/type/base'
require 'serverspec_extra_types/helpers/properties'

module Serverspec::Type
  class NfsExport < Base
    def initialize(name = nil, options = {})
      super(name, options)
      @export = name
    end

    def exists?
      get_inspection.success?
    end

    def has_host?(host_id, option = nil)
      if option
        check_options(host_id, option)
      else
        hosts.key?(host_id)
      end
    end

    def hosts
      unless @hosts
        @hosts = {}
        inspection.split(' ')[1..-1].each do |item|
          (host, options) = item.split('(')
          @hosts[host] = options.split(')')[0].split(',')
        end
      end
      @hosts
    end

    def host(host_id)
      hosts[host_id]
    end

    def inspection
      @inspection ||= get_inspection.stdout
    end

    # rubocop:disable Naming/AccessorMethodName
    def get_inspection
      command = "grep #{@export} /etc/exports"
      @get_inspection ||= @runner.run_command(command)
    end
    # rubocop:enable Naming/AccessorMethodName

    private

    def check_options(host_id, opts)
      options = opts.include?(',') ? opts.spilt(',') : opts
      if options.is_a? Array
        host(host_id).split(',').include?(options)
      else
        host(host_id).include?(options)
      end
   end
  end
end
