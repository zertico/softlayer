module Softlayer
  module Product
    class Package
      class Preset
        class Attribute < Softlayer::Entity
          autoload :Type, 'softlayer/product/package/preset/attribute/type'
          attr_accessor :attribute_type_id
          attr_accessor :id
          attr_accessor :preset_id
          attr_accessor :value
          attr_accessor :attribute_type
          attr_accessor :preset

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :attribute_type_id, type: Integer
            property :id, type: Integer
            property :preset_id, type: Integer
            property :value, type: String
          end
        end
      end
    end
  end
end
