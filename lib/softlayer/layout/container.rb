module Softlayer
  module Layout
    class Container < Softlayer::Entity
      SERVICE = 'SoftLayer_Layout_Container'
      autoload :Type, 'softlayer/layout/container/type'
      attr_accessor :id
      attr_accessor :keyname
      attr_accessor :layout_container_type_id
      attr_accessor :name
      attr_accessor :layout_item_count
      attr_accessor :layout_container_type
      attr_accessor :layout_items

      def self.get_all_objects
        request(:get_all_objects, Array[Softlayer::Layout::Container])
      end

      def get_layout_container_type
        request(:get_layout_container_type, Softlayer::Layout::Container::Type)
      end

      def get_layout_items
        request(:get_layout_items, Array[Softlayer::Layout::Item])
      end

      def get_object
        request(:get_object, Softlayer::Layout::Container)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :id, type: Integer
        property :keyname, type: String
        property :layout_container_type_id, type: Integer
        property :name, type: String
        property :layout_item_count, type: BigDecimal
      end
    end
  end
end
