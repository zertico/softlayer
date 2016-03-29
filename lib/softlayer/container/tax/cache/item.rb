module Softlayer
  module Container
    module Tax
      class Cache
        class Item < Softlayer::Entity
          attr_accessor :category_code
          attr_accessor :container_hash
          attr_accessor :item_price_id
          attr_accessor :tax_rates

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :category_code, type: String
            property :container_hash, type: String
            property :item_price_id, type: Integer
          end
        end
      end
    end
  end
end
