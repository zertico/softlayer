module Softlayer
  module Product
    class Item
      module Link
        class ThePlanet < Softlayer::Model
          attr_accessor :item
          attr_accessor :service_provider

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
