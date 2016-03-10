module Softlayer
  class Hardware
    class Router
      class Frontend < Softlayer::Hardware::Router

        class Representer < Softlayer::Hardware::Router::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
