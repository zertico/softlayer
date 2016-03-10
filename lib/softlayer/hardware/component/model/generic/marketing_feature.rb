module Softlayer
  class Hardware
    class Component
      class Model
        class Generic
          class MarketingFeature < Softlayer::Model
            attr_accessor :features
            attr_accessor :price
            attr_accessor :hardware_generic_component_model

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :features, type: String
              property :price, type: String
            end
          end
        end
      end
    end
  end
end
