module Softlayer
  module Container
    module Product
      class Order
        module Software
          module Component
            class Virtual < Softlayer::Container::Product::Order
              attr_accessor :end_point_ip_address_ids

              class Representer < Softlayer::Container::Product::Order::Representer
                include Representable::Hash
                include Representable::Coercion
              end
            end
          end
        end
      end
    end
  end
end
