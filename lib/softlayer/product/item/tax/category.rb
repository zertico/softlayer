module Softlayer
  module Product
    class Item
      module Tax
        class Category < Softlayer::Model
          attr_accessor :id
          attr_accessor :name
          attr_accessor :status_flag
          attr_accessor :item_count
          attr_accessor :items

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :name, type: String
            property :status_flag, type: Integer
            property :item_count, type: BigDecimal
          end
        end
      end
    end
  end
end
