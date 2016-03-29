module Softlayer
  module Product
    class Item
      class Price
        class Premium < Softlayer::Entity
          SERVICE = 'SoftLayer_Product_Item_Price_Premium'
          attr_accessor :hourly_modifier
          attr_accessor :item_price_id
          attr_accessor :location_id
          attr_accessor :monthly_modifier
          attr_accessor :package_id
          attr_accessor :item_price
          attr_accessor :location
          attr_accessor :package

          def get_item_price
            request(:get_item_price, Softlayer::Product::Item::Price)
          end

          def get_location
            request(:get_location, Softlayer::Location)
          end

          def get_object
            request(:get_object, Softlayer::Product::Item::Price::Premium)
          end

          def get_package
            request(:get_package, Softlayer::Product::Package)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :hourly_modifier, type: Float
            property :item_price_id, type: Integer
            property :location_id, type: Integer
            property :monthly_modifier, type: Float
            property :package_id, type: Integer
          end
        end
      end
    end
  end
end
