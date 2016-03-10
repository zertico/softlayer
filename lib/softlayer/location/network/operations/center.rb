module Softlayer
  class Location
    module Network
      module Operations
        class Center < Softlayer::Location

          class Representer < Softlayer::Location::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
