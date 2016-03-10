module Softlayer
  module Container
    module Product
      class Order
        class Network
          module Application
            module Delivery
              class Controller < Softlayer::Container::Product::Order
                attr_accessor :application_delivery_controller_id

                class Representer < Softlayer::Container::Product::Order::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :application_delivery_controller_id, type: Integer
                end
              end
            end
          end
        end
      end
    end
  end
end
