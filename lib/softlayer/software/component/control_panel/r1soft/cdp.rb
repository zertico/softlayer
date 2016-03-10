module Softlayer
  module Software
    class Component
      class ControlPanel
        class R1soft
          class Cdp < Softlayer::Software::Component::ControlPanel::R1soft

            class Representer < Softlayer::Software::Component::ControlPanel::R1soft::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
