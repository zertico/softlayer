module Softlayer
  module Product
    class Catalog < Softlayer::Entity
      autoload :Item, 'softlayer/product/catalog/item'
      attr_accessor :brand_count
      attr_accessor :package_count
      attr_accessor :price_count
      attr_accessor :product_count
      attr_accessor :brands
      attr_accessor :packages
      attr_accessor :prices
      attr_accessor :products

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :brand_count, type: BigDecimal
        property :package_count, type: BigDecimal
        property :price_count, type: BigDecimal
        property :product_count, type: BigDecimal
      end
    end
  end
end
