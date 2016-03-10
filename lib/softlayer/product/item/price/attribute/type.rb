module Softlayer
  module Product
    class Item
      class Price
        class Attribute
          class Type < Softlayer::Model
            attr_accessor :id
            attr_accessor :keyname

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :id, type: Integer
              property :keyname, type: String
            end
          end
        end
      end
    end
  end
end
