module Softlayer
  class Hardware
    class Note
      class Type < Softlayer::Entity
        attr_accessor :key_name

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :key_name, type: String
        end
      end
    end
  end
end
