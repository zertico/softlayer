module Softlayer
  module Software
    class Component
      class ControlPanel
        class R1soft < Softlayer::Software::Component
          autoload :Cdp, 'softlayer/software/component/control_panel/r1soft/cdp'
          autoload :ServerBackup, 'softlayer/software/component/control_panel/r1soft/server_backup'

          class Representer < Softlayer::Software::Component::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
