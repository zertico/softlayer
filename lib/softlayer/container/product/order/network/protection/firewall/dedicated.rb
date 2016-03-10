module Softlayer
  module Container
    module Product
      class Order
        class Network
          module Protection
            class Firewall
              class Dedicated < Softlayer::Container::Product::Order
                attr_accessor :vlan
                attr_accessor :vlan_id

                class Representer < Softlayer::Container::Product::Order::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :vlan_id, type: Integer
                end
              end
            end
          end
        end
      end
    end
  end
end
