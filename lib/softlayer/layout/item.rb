module Softlayer
  module Layout
    class Item < Softlayer::Entity
      SERVICE = 'SoftLayer_Layout_Item'
      autoload :Type, 'softlayer/layout/item/type'
      attr_accessor :id
      attr_accessor :keyname
      attr_accessor :layout_item_type_id
      attr_accessor :name
      attr_accessor :layout_item_preference_count
      attr_accessor :layout_item_preferences
      attr_accessor :layout_item_type

      def get_layout_item_preferences
        request(:get_layout_item_preferences, Array[Softlayer::Layout::Preference])
      end

      def get_layout_item_type
        request(:get_layout_item_type, Softlayer::Layout::Item::Type)
      end

      def get_object
        request(:get_object, Softlayer::Layout::Item)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :id, type: Integer
        property :keyname, type: String
        property :layout_item_type_id, type: Integer
        property :name, type: String
        property :layout_item_preference_count, type: BigDecimal
      end
    end
  end
end
