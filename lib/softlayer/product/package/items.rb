module Softlayer
  module Product
    class Package
      class Items < Softlayer::Entity
        attr_accessor :id
        attr_accessor :item_id
        attr_accessor :package_id
        attr_accessor :item
        attr_accessor :package

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :id, type: String
          property :item_id, type: Integer
          property :package_id, type: Integer
        end
      end
    end
  end
end
