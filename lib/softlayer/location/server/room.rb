module Softlayer
  class Location
    module Server
      class Room < Softlayer::Location

        class Representer < Softlayer::Location::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
