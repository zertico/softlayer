module Softlayer
  class Network
    module Customer
      class Subnet < Softlayer::Model
        SERVICE = 'SoftLayer_Network_Customer_Subnet'
        autoload :IpAddress, 'softlayer/network/customer/subnet/ip_address'
        attr_accessor :account_id
        attr_accessor :cidr
        attr_accessor :id
        attr_accessor :netmask
        attr_accessor :network_identifier
        attr_accessor :total_ip_addresses
        attr_accessor :ip_address_count
        attr_accessor :ip_addresses

        def self.create_object(template_object = nil)
          message = {template_object: template_object}
          request(:create_object, Softlayer::Network::Customer::Subnet, message)
        end

        def get_ip_addresses
          request(:get_ip_addresses, Array[Softlayer::Network::Customer::Subnet::IpAddress])
        end

        def get_object
          request(:get_object, Softlayer::Network::Customer::Subnet)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :account_id, type: Integer
          property :cidr, type: Integer
          property :id, type: Integer
          property :netmask, type: String
          property :network_identifier, type: String
          property :total_ip_addresses, type: Integer
          property :ip_address_count, type: BigDecimal
        end
      end
    end
  end
end
