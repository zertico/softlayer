module Softlayer
  module Container
    module Product
      class Order
        class Property < Softlayer::Model
          attr_accessor :name
          attr_accessor :value

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :name, type: String
            property :value, type: String
          end
        end
      end
    end
  end
end
