module Softlayer
  module Product
    class Item
      class Attribute < Softlayer::Entity
        autoload :Type, 'softlayer/product/item/attribute/type'
        attr_accessor :id
        attr_accessor :item_attribute_type_id
        attr_accessor :item_id
        attr_accessor :value
        attr_accessor :attribute_type
        attr_accessor :attribute_type_key_name
        attr_accessor :item

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :id, type: Integer
          property :item_attribute_type_id, type: Integer
          property :item_id, type: Integer
          property :value, type: String
          property :attribute_type_key_name, type: String
        end
      end
    end
  end
end
