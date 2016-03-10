module Softlayer
  module Container
    module Product
      class Order
        module Virtual
          class Guest < Softlayer::Container::Product::Order::Hardware::Server
            autoload :Upgrade, 'softlayer/container/product/order/virtual/guest/upgrade'

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
