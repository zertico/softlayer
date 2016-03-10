module Softlayer
  module Product
    class Item
      class Price
        class Attribute < Softlayer::Model
          autoload :Type, 'softlayer/product/item/price/attribute/type'
          attr_accessor :id
          attr_accessor :item_price_attribute_type_id
          attr_accessor :item_price_id
          attr_accessor :value
          attr_accessor :item_price
          attr_accessor :item_price_attribute_type

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :item_price_attribute_type_id, type: Integer
            property :item_price_id, type: Integer
            property :value, type: String
          end
        end
      end
    end
  end
end
