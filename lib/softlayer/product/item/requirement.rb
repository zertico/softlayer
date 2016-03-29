module Softlayer
  module Product
    class Item
      class Requirement < Softlayer::Entity
        attr_accessor :id
        attr_accessor :item_id
        attr_accessor :message
        attr_accessor :required_item_id
        attr_accessor :item
        attr_accessor :product

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :id, type: Integer
          property :item_id, type: Integer
          property :message, type: String
          property :required_item_id, type: Integer
        end
      end
    end
  end
end
