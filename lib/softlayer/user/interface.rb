module Softlayer
  module User
    class Interface < Softlayer::Model

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
