module Softlayer
  module Product
    class Item
      class Bundles < Softlayer::Entity
        attr_accessor :bundle_item_id
        attr_accessor :id
        attr_accessor :item_price_id
        attr_accessor :bundle_item
        attr_accessor :category
        attr_accessor :item_price

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :bundle_item_id, type: Integer
          property :id, type: Integer
          property :item_price_id, type: Integer
        end
      end
    end
  end
end
