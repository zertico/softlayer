module Softlayer
  module Product
    class Item
      class Category
        class Group < Softlayer::Model
          SERVICE = 'SoftLayer_Product_Item_Category_Group'
          attr_accessor :id
          attr_accessor :name

          def get_object
            request(:get_object, Softlayer::Product::Item::Category::Group)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :name, type: String
          end
        end
      end
    end
  end
end
