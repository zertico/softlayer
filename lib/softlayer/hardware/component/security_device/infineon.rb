module Softlayer
  class Hardware
    class Component
      class SecurityDevice
        class Infineon < Softlayer::Hardware::Component::SecurityDevice

          class Representer < Softlayer::Hardware::Component::SecurityDevice::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
