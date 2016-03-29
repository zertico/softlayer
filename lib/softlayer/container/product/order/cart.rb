module Softlayer
  module Container
    module Product
      class Order
        class Cart < Softlayer::Entity
          autoload :Item, 'softlayer/container/product/order/cart/item'
          attr_accessor :currency_short_name
          attr_accessor :items
          attr_accessor :receipt
          attr_accessor :saved_cart_id
          attr_accessor :saved_cart_key
          attr_accessor :saved_cart_name

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :currency_short_name, type: String
            property :saved_cart_id, type: Integer
            property :saved_cart_key, type: String
            property :saved_cart_name, type: String
          end
        end
      end
    end
  end
end
