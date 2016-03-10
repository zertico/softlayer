module Softlayer
  module Container
    module Product
      class Order
        class Network
          class Vlan < Softlayer::Container::Product::Order
            attr_accessor :description
            attr_accessor :hostname_datacenter
            attr_accessor :hostname_router
            attr_accessor :id
            attr_accessor :name
            attr_accessor :router
            attr_accessor :router_id
            attr_accessor :subnets
            attr_accessor :vlan_number

            class Representer < Softlayer::Container::Product::Order::Representer
              include Representable::Hash
              include Representable::Coercion
              property :description, type: String
              property :hostname_datacenter, type: String
              property :hostname_router, type: String
              property :id, type: Integer
              property :name, type: String
              property :router_id, type: Integer
              property :vlan_number, type: Integer
            end
          end
        end
      end
    end
  end
end
