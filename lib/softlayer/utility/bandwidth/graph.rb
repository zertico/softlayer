module Softlayer
  module Utility
    module Bandwidth
      class Graph < Softlayer::Model

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
