module Softlayer
  module Software
    class Component
      class ControlPanel
        class Parallels < Softlayer::Software::Component
          autoload :Plesk, 'softlayer/software/component/control_panel/parallels/plesk'

          class Representer < Softlayer::Software::Component::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
