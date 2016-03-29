module Softlayer
  module Container
    module Product
      class Order
        class Property < Softlayer::Entity
          attr_accessor :name
          attr_accessor :value

          class Representer < Softlayer::Entity::Representer
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
