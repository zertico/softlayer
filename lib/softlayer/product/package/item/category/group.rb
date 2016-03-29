module Softlayer
  module Product
    class Package
      module Item
        module Category
          class Group < Softlayer::Entity
            attr_accessor :item_category_id
            attr_accessor :package_id
            attr_accessor :sort
            attr_accessor :title
            attr_accessor :price_count
            attr_accessor :category
            attr_accessor :package
            attr_accessor :prices

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :item_category_id, type: Integer
              property :package_id, type: Integer
              property :sort, type: Integer
              property :title, type: String
              property :price_count, type: BigDecimal
            end
          end
        end
      end
    end
  end
end
