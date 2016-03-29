module Softlayer
  module Container
    class Graph
      class Plot
        class Coordinate < Softlayer::Entity
          attr_accessor :x_value
          attr_accessor :y_value
          attr_accessor :z_value

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :x_value, type: Float
            property :y_value, type: Float
            property :z_value, type: Float
          end
        end
      end
    end
  end
end
