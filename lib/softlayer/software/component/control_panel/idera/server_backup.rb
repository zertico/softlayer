module Softlayer
  module Software
    class Component
      class ControlPanel
        class Idera
          class ServerBackup < Softlayer::Software::Component::ControlPanel::Idera

            class Representer < Softlayer::Software::Component::ControlPanel::Idera::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
