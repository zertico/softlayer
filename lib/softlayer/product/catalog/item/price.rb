module Softlayer
  module Product
    class Catalog
      module Item
        class Price < Softlayer::Model
          attr_accessor :catalog_id
          attr_accessor :create_date
          attr_accessor :modify_date
          attr_accessor :price_id
          attr_accessor :catalog
          attr_accessor :price

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :catalog_id, type: Integer
            property :create_date, type: DateTime
            property :modify_date, type: DateTime
            property :price_id, type: Integer
          end
        end
      end
    end
  end
end
