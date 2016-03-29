module Softlayer
  module Utility
    module Bandwidth
      class Graph < Softlayer::Entity

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
