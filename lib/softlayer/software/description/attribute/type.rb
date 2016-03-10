module Softlayer
  module Software
    class Description
      class Attribute
        class Type < Softlayer::Model
          attr_accessor :keyname

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :keyname, type: String
          end
        end
      end
    end
  end
end
