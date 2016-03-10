module Softlayer
  module Software
    class Component
      class ControlPanel
        class Parallels
          class Plesk < Softlayer::Software::Component::ControlPanel::Parallels

            class Representer < Softlayer::Software::Component::ControlPanel::Parallels::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
