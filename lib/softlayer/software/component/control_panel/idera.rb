module Softlayer
  module Software
    class Component
      class ControlPanel
        class Idera < Softlayer::Software::Component
          autoload :ServerBackup, 'softlayer/software/component/control_panel/idera/server_backup'

          class Representer < Softlayer::Software::Component::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
