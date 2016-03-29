module Softlayer
  module Product
    class Item
      module Link
        class ThePlanet < Softlayer::Entity
          attr_accessor :item
          attr_accessor :service_provider

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
