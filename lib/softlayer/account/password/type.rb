module Softlayer
  class Account
    class Password
      class Type < Softlayer::Entity
        attr_accessor :description

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :description, type: String
        end
      end
    end
  end
end
