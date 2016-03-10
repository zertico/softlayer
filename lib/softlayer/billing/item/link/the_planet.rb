module Softlayer
  module Billing
    class Item
      module Link
        class ThePlanet < Softlayer::Model
          attr_accessor :billing_item
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
