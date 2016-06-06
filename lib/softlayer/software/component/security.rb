module Softlayer
  module Software
    class Component
      class Security < Softlayer::Software::Component
        autoload :SafeNet, 'softlayer/software/component/security/safe_net'

        class Representer < Softlayer::Software::Component::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
