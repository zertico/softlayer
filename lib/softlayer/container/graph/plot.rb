module Softlayer
  module Container
    class Graph
      class Plot < Softlayer::Entity
        autoload :Coordinate, 'softlayer/container/graph/plot/coordinate'
        attr_accessor :data
        attr_accessor :metric
        attr_accessor :unit

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :unit, type: String
        end
      end
    end
  end
end
