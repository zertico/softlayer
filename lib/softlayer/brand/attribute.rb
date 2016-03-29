module Softlayer
  class Brand
    class Attribute < Softlayer::Entity
      attr_accessor :brand

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
