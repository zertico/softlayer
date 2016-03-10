module Softlayer
  class Hardware
    class Switch < Softlayer::Hardware

      class Representer < Softlayer::Hardware::Representer
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
