module Softlayer
  class Network
    module Service
      class Resource < Softlayer::Model
        autoload :Attribute, 'softlayer/network/service/resource/attribute'
        autoload :Hub, 'softlayer/network/service/resource/hub'
        autoload :MonitoringHub, 'softlayer/network/service/resource/monitoring_hub'
        autoload :NimsoftLandingHub, 'softlayer/network/service/resource/nimsoft_landing_hub'
        autoload :Type, 'softlayer/network/service/resource/type'
        attr_accessor :backend_ip_address
        attr_accessor :frontend_ip_address
        attr_accessor :id
        attr_accessor :name
        attr_accessor :attribute_count
        attr_accessor :api_host
        attr_accessor :api_password
        attr_accessor :api_path
        attr_accessor :api_port
        attr_accessor :api_protocol
        attr_accessor :api_username
        attr_accessor :api_version
        attr_accessor :attributes
        attr_accessor :datacenter
        attr_accessor :network_device
        attr_accessor :ssh_username
        attr_accessor :type

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :backend_ip_address, type: String
          property :frontend_ip_address, type: String
          property :id, type: Integer
          property :name, type: String
          property :attribute_count, type: BigDecimal
          property :api_host, type: String
          property :api_password, type: String
          property :api_path, type: String
          property :api_port, type: String
          property :api_protocol, type: String
          property :api_username, type: String
          property :api_version, type: String
          property :ssh_username, type: String
        end
      end
    end
  end
end
