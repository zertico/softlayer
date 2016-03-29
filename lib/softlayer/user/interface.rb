module Softlayer
  module User
    class Interface < Softlayer::Entity

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
