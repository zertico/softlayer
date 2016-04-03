module Softlayer
  class Network < Softlayer::Entity
    SERVICE = 'SoftLayer_Network'
    autoload :Backbone, 'softlayer/network/backbone'
    autoload :Component, 'softlayer/network/component'
    autoload :Gateway, 'softlayer/network/gateway'
    autoload :Monitor, 'softlayer/network/monitor'
    autoload :Pod, 'softlayer/network/pod'
    autoload :Storage, 'softlayer/network/storage'
    autoload :Subnet, 'softlayer/network/subnet'
    autoload :TippingPointReporting, 'softlayer/network/tipping_point_reporting'
    autoload :Vlan, 'softlayer/network/vlan'
    autoload :Application, 'softlayer/network/application'
    autoload :Bandwidth, 'softlayer/network/bandwidth'
    autoload :ContentDelivery, 'softlayer/network/content_delivery'
    autoload :Customer, 'softlayer/network/customer'
    autoload :Firewall, 'softlayer/network/firewall'
    autoload :LoadBalancer, 'softlayer/network/load_balancer'
    autoload :Logging, 'softlayer/network/logging'
    autoload :Media, 'softlayer/network/media'
    autoload :Message, 'softlayer/network/message'
    autoload :Protection, 'softlayer/network/protection'
    autoload :Regional, 'softlayer/network/regional'
    autoload :Security, 'softlayer/network/security'
    autoload :Service, 'softlayer/network/service'
    autoload :Tunnel, 'softlayer/network/tunnel'
    attr_accessor :account_id
    attr_accessor :id
    attr_accessor :subnet_count
    attr_accessor :cidr
    attr_accessor :name
    attr_accessor :network_identifier
    attr_accessor :notes
    attr_accessor :subnets

    # template_object
    def self.create_object(message)
      request(:create_object, Softlayer::Network, message)
    end

    # subnet
    # pod
    def create_subnet(message)
      request(:create_subnet, Softlayer::Network::Subnet, message)
    end

    def delete_object
      request(:delete_object, Boolean)
    end

    # subnet
    def delete_subnet(message)
      request(:delete_subnet, Boolean, message)
    end

    # template_object
    def edit_object(message)
      request(:edit_object, Boolean, message)
    end

    def self.get_all_objects
      request(:get_all_objects, Array[Softlayer::Network])
    end

    def get_cidr
      request(:get_cidr, Integer)
    end

    def get_name
      request(:get_name, String)
    end

    def get_network_identifier
      request(:get_network_identifier, String)
    end

    def get_notes
      request(:get_notes, String)
    end

    def get_object
      request(:get_object, Softlayer::Network)
    end

    def get_subnets
      request(:get_subnets, Array[Softlayer::Network::Subnet])
    end

    class Representer < Softlayer::Entity::Representer
      include Representable::Hash
      include Representable::Coercion
      property :account_id, type: Integer
      property :id, type: Integer
      property :subnet_count, type: BigDecimal
      property :cidr, type: Integer
      property :name, type: String
      property :network_identifier, type: String
      property :notes, type: String
    end
  end
end
