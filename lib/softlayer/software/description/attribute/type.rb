module Softlayer
  module Software
    class Description
      class Attribute
        class Type < Softlayer::Entity
          attr_accessor :keyname

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :keyname, type: String
          end
        end
      end
    end
  end
end
