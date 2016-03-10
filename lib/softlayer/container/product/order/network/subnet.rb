module Softlayer
  module Container
    module Product
      class Order
        class Network
          class Subnet < Softlayer::Container::Product::Order
            attr_accessor :description
            attr_accessor :end_point_ip_address_id
            attr_accessor :end_point_vlan_id
            attr_accessor :id
            attr_accessor :router_hostname

            class Representer < Softlayer::Container::Product::Order::Representer
              include Representable::Hash
              include Representable::Coercion
              property :description, type: String
              property :end_point_ip_address_id, type: Integer
              property :end_point_vlan_id, type: Integer
              property :id, type: Integer
              property :router_hostname, type: String
            end
          end
        end
      end
    end
  end
end
