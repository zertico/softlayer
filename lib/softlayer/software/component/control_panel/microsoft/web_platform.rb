module Softlayer
  module Software
    class Component
      class ControlPanel
        class Microsoft
          class WebPlatform < Softlayer::Software::Component::ControlPanel::Microsoft

            class Representer < Softlayer::Software::Component::ControlPanel::Microsoft::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
