module Softlayer
  module Software
    class Component
      class Security
        class SafeNet < Softlayer::Software::Component::Security

          class Representer < Softlayer::Software::Component::Security::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
