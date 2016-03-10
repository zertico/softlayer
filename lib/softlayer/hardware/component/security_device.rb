module Softlayer
  class Hardware
    class Component
      class SecurityDevice < Softlayer::Hardware::Component
        autoload :Infineon, 'softlayer/hardware/component/security_device/infineon'

        class Representer < Softlayer::Hardware::Component::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
