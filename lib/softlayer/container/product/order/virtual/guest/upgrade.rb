module Softlayer
  module Container
    module Product
      class Order
        module Virtual
          class Guest
            class Upgrade < Softlayer::Container::Product::Order::Virtual::Guest

              class Representer < Softlayer::Container::Product::Order::Virtual::Guest::Representer
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
