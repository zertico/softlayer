module Softlayer
  module Virtual
    class Guest
      class Attribute
        class UserData < Softlayer::Virtual::Guest::Attribute

          class Representer < Softlayer::Virtual::Guest::Attribute::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
