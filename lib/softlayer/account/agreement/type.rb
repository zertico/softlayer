module Softlayer
  class Account
    class Agreement
      class Type < Softlayer::Entity
        attr_accessor :name

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :name, type: String
        end
      end
    end
  end
end
