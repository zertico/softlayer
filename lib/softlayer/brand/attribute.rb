module Softlayer
  class Brand
    class Attribute < Softlayer::Model
      attr_accessor :brand

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
