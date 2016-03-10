module Softlayer
  module Container
    module Product
      class Order
        module Hardware
          class Server
            class Colocation < Softlayer::Container::Product::Order::Hardware::Server

              class Representer < Softlayer::Container::Product::Order::Hardware::Server::Representer
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
