module Softlayer
  class Network
    class Vlan
      class Firewall
        class Rule < Softlayer::Entity
          attr_accessor :action
          attr_accessor :destination_ip_address
          attr_accessor :destination_ip_cidr
          attr_accessor :destination_ip_subnet_mask
          attr_accessor :destination_port_range_end
          attr_accessor :destination_port_range_start
          attr_accessor :id
          attr_accessor :notes
          attr_accessor :order_value
          attr_accessor :protocol
          attr_accessor :source_ip_address
          attr_accessor :source_ip_cidr
          attr_accessor :source_ip_subnet_mask
          attr_accessor :status
          attr_accessor :version
          attr_accessor :network_component_firewall

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :action, type: String
            property :destination_ip_address, type: String
            property :destination_ip_cidr, type: Integer
            property :destination_ip_subnet_mask, type: String
            property :destination_port_range_end, type: Integer
            property :destination_port_range_start, type: Integer
            property :id, type: Integer
            property :notes, type: String
            property :order_value, type: Integer
            property :protocol, type: String
            property :source_ip_address, type: String
            property :source_ip_cidr, type: Integer
            property :source_ip_subnet_mask, type: String
            property :status, type: String
            property :version, type: Integer
          end
        end
      end
    end
  end
end
