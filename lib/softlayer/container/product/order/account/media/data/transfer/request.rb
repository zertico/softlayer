module Softlayer
  module Container
    module Product
      class Order
        module Account
          module Media
            module Data
              module Transfer
                class Request < Softlayer::Container::Product::Order
                  attr_accessor :request

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
  end
end
