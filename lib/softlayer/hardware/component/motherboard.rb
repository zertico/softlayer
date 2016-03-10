module Softlayer
  class Hardware
    class Component
      class Motherboard < Softlayer::Hardware::Component
        autoload :Reboot, 'softlayer/hardware/component/motherboard/reboot'

        class Representer < Softlayer::Hardware::Component::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
