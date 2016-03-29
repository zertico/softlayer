module Softlayer
  module Product
    class Package
      class Attribute < Softlayer::Entity
        autoload :Type, 'softlayer/product/package/attribute/type'
        attr_accessor :value
        attr_accessor :attribute_type
        attr_accessor :package

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :value, type: String
        end
      end
    end
  end
end
