module Softlayer
  module Product
    class Item
      module Resource
        class Conflict < Softlayer::Model
          autoload :Item, 'softlayer/product/item/resource/conflict/item'
          autoload :Location, 'softlayer/product/item/resource/conflict/location'
          attr_accessor :item_id
          attr_accessor :message
          attr_accessor :package_id
          attr_accessor :resource_table_id
          attr_accessor :item
          attr_accessor :package

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :item_id, type: Integer
            property :message, type: String
            property :package_id, type: Integer
            property :resource_table_id, type: Integer
          end
        end
      end
    end
  end
end
