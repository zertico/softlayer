module Softlayer
  class Location
    class Rack < Softlayer::Location

      class Representer < Softlayer::Location::Representer
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
