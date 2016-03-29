module Softlayer
  module Product
    class Item
      module Billing
        class Type < Softlayer::Entity
          attr_accessor :name

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :name, type: String
          end
        end
      end
    end
  end
end
