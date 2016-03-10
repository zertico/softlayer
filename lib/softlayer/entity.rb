module Softlayer
  class Entity < Softlayer::Model

    class Representer < Representable::Decorator
      include Representable::Hash
      include Representable::Coercion
    end
  end
end
