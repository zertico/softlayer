module Softlayer
  module Container
    class Graph
      class Plot < Softlayer::Model
        autoload :Coordinate, 'softlayer/container/graph/plot/coordinate'
        attr_accessor :data
        attr_accessor :metric
        attr_accessor :unit

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :unit, type: String
        end
      end
    end
  end
end
