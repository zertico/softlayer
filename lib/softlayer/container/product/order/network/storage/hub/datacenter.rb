module Softlayer
  module Container
    module Product
      class Order
        class Network
          module Storage
            class Hub
              class Datacenter < Softlayer::Entity
                attr_accessor :location
                attr_accessor :usage_rate_prices

                class Representer < Softlayer::Entity::Representer
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
end
