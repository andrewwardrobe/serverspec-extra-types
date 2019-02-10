# frozen_string_literal: true

require 'serverspec_extra_types/types/consul_base'

# TODO: List and singular
module Serverspec::Type
  class ConsulNode < ConsulBase
    def url
      "#{@url_base}/v1/catalog/node/#{@name}"
    end

    def has_datacenter?(dc)
      datacenter == dc
    end

    def datacenter
      inspection['Node']['Datacenter']
    end

    def has_service?(service_name)
      service(service_name) != nil
    end

    def service(service_name)
      services.find service_name
    end

    def services
      inspection['Services']
    end

    def inspection
      @inspection ||= ::MultiJson.load(get_inspection.stdout)
    end
  end
end
