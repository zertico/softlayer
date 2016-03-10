module Softlayer
  module Container
    module Product
      class Order
        module Software
          class Component < Softlayer::Container::Product::Order
            autoload :Virtual, 'softlayer/container/product/order/software/component/virtual'
            attr_accessor :virtual_guest_premium_os

            class Representer < Softlayer::Container::Product::Order::Representer
              include Representable::Hash
              include Representable::Coercion
              property :virtual_guest_premium_os, type: Boolean
            end
          end
        end
      end
    end
  end
end
