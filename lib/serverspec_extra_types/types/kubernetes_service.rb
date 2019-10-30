require 'serverspec_extra_types/types/kubernetes_base'

module Serverspec::Type
  class KubernetesService < KubernetesBase

    def initialize(name = nil, options = {})
      super(name, options)
      @name = name
    end


    def cluster_ip
      inspection.dig('spec' ,'clusterIP')
    end

    def has_cluster_ip?(cluster_ip)
      self.cluster_ip == cluster_ip
    end

    def node_port?
      self.type == 'NodePort'
    end


    def type
      inspection.dig('spec' ,'type')
    end

    def has_type?(type)
      self.type == type
    end

    def cluster_ip?
      self.type == 'ClusterIP'
    end

    def ports
      inspection.dig('spec' ,'ports')
    end

    def port(port, name = nil, nodePort = nil, targetPort = nil, protocol = 'TCP')
      if port && name && nodePort && targetPort && protocol
        self.ports.find {|item| item["port"] == port && item["name"] == name && item["nodePort"] == nodePort && item["targetPort"] == targetPort && item["protocol"] == protocol}
      elsif port && name && nodePort && targetPort
        self.ports.find {|item| item["port"] == port && item["name"] == name && item["nodePort"] == nodePort && item["targetPort"] == targetPort}
      elsif port && name && nodePort && protocol
        self.ports.find {|item| item["port"] == port && item["name"] == name && item["nodePort"] == nodePort && item["protocol"] == protocol}
      elsif port && name && targetPort && protocol
        self.ports.find {|item| item["port"] == port && item["name"] == name && item["targetPort"] == targetPort && item["protocol"] == protocol}
      elsif port && nodePort && targetPort && protocol
        self.ports.find {|item| item["port"] == port && item["nodePort"] == nodePort && item["targetPort"] == targetPort && item["protocol"] == protocol}
      elsif port && name && nodePort
        self.ports.find {|item| item["port"] == port && item["name"] == name && item["nodePort"] == nodePort}
      elsif port && name && targetPort
        self.ports.find {|item| item["port"] == port && item["name"] == name && item["targetPort"] == targetPort}
      elsif port && name && protocol
        self.ports.find {|item| item["port"] == port && item["name"] == name && item["protocol"] == protocol}
      elsif port && nodePort && targetPort
        self.ports.find {|item| item["port"] == port && item["nodePort"] == nodePort && item["targetPort"] == targetPort}
      elsif port && nodePort && protocol
        self.ports.find {|item| item["port"] == port && item["nodePort"] == nodePort && item["protocol"] == protocol}
      elsif port && targetPort && protocol
        self.ports.find {|item| item["port"] == port && item["targetPort"] == targetPort && item["protocol"] == protocol}
      elsif port && name
        self.ports.find {|item| item["port"] == port && item["name"] == name}
      elsif port && nodePort
        self.ports.find {|item| item["port"] == port && item["nodePort"] == nodePort}
      elsif port && targetPort
        self.ports.find {|item| item["port"] == port && item["targetPort"] == targetPort}
      elsif port && protocol
        self.ports.find {|item| item["port"] == port && item["protocol"] == protocol}
      elsif port
        self.ports.find {|item| item["port"] == port}
      end

    end
    def has_port?(port, name = nil, nodePort = nil, targetPort = nil, protocol = 'TCP')
      self.port(port, name, nodePort, targetPort, protocol)
    end



    def exist?
      get_inspection.success?
    end

    # rubocop:disable Naming/AccessorMethodName
    def get_inspection
      command = "kubectl get svc #{@name} -o json"
      @get_inspection ||= @runner.run_command(command)
    end
  end
end