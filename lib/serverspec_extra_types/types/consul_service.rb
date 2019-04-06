# frozen_string_literal: true

require 'serverspec_extra_types/types/consul_base'

# TODO: List and singular
module Serverspec::Type
  class ConsulService < ConsulBase
    def url
      "#{@url_base}/v1/catalog/service/#{@name}"
    end

    def to_s
      msg = "Consul Service #{@name}"
      msg << %( with acl token: "#{@token}") if @token
      msg
    end

    def inspection
      puts get_inspection.stdout
      puts get_inspection.stderr
      @inspection ||= ::MultiJson.load(get_inspection.stdout)[0]
    end


    ##= Generated Code Start =##
    # TODO: Make these better
    # Key Type: String
    def id
      inspection['ID']
    end

    def has_id?(id)
      self.id == id
    end

    # Key Type: String
    def node
      inspection['Node']
    end

    def has_node?(node)
      self.node == node
    end

    # Key Type: String
    def address
      inspection['Address']
    end

    def has_address?(address)
      self.address == address
    end

    # Key Type: String
    def datacenter
      inspection['Datacenter']
    end

    def has_datacenter?(datacenter)
      self.datacenter == datacenter
    end

    # Key Type: Hash
    def tagged_addresses
      inspection['TaggedAddresses']
    end

    # Todo: do method for indiviual tagged addresses
    def has_tagged_addresses?(tagged_addresses)
      self.tagged_addresses == tagged_addresses
    end

    # Key Type: Hash
    def node_meta
      inspection['NodeMeta']
    end

    def has_node_meta?(node_meta)
      self.node_meta == node_meta
    end

    # Key Type: String
    def service_kind
      inspection['ServiceKind']
    end

    def has_service_kind?(service_kind)
      self.service_kind == service_kind
    end

    # Key Type: String
    def service_id
      inspection['ServiceID']
    end

    def has_service_id?(service_id)
      self.service_id == service_id
    end

    # Key Type: String
    def service_name
      inspection['ServiceName']
    end

    def has_service_name?(service_name)
      self.service_name == service_name
    end

    # Key Type: Array
    def service_tags
      inspection['ServiceTags']
    end

    def has_service_tags?(service_tags)
      self.service_tags == service_tags
    end

    # Key Type: String
    def service_address
      inspection['ServiceAddress']
    end

    def has_service_address?(service_address)
      self.service_address == service_address
    end

    # Key Type: Hash
    def service_weights
      inspection['ServiceWeights']
    end

    # Todo: do method for indiviual service weight are well as passing/warning
    def has_service_weights?(service_weights)
      self.service_weights == service_weights
    end

    # Key Type: Hash
    def service_meta
      inspection['ServiceMeta']
    end

    def has_service_meta?(service_meta)
      self.service_meta == service_meta
    end

    # Key Type: Integer
    def service_port
      inspection['ServicePort']
    end

    def has_service_port?(service_port)
      self.service_port == service_port
    end

    # Key Type: FalseClass
    def service_enable_tag_override
      inspection['ServiceEnableTagOverride']
    end

    def has_service_enable_tag_override?(service_enable_tag_override)
      self.service_enable_tag_override == service_enable_tag_override
    end

    # Key Type: String
    def service_proxy_destination
      inspection['ServiceProxyDestination']
    end

    def has_service_proxy_destination?(service_proxy_destination)
      self.service_proxy_destination == service_proxy_destination
    end

    # Key Type: Hash
    def service_proxy
      inspection['ServiceProxy']
    end

    def has_service_proxy?(service_proxy)
      self.service_proxy == service_proxy
    end

    # Key Type: Hash
    def service_connect
      inspection['ServiceConnect']
    end

    def has_service_connect?(service_connect)
      self.service_connect == service_connect
    end

    # Key Type: Integer
    def create_index
      inspection['CreateIndex']
    end

    def has_create_index?(create_index)
      self.create_index == create_index
    end

    # Key Type: Integer
    def modify_index
      inspection['ModifyIndex']
    end

    def has_modify_index?(modify_index)
      self.modify_index == modify_index
    end
    ##= Generated Code End   =##

  end
end
