module Softlayer
  module Software
    class Component
      class ControlPanel
        class Microsoft < Softlayer::Software::Component
          autoload :WebPlatform, 'softlayer/software/component/control_panel/microsoft/web_platform'

          class Representer < Softlayer::Software::Component::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
