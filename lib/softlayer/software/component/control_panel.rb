module Softlayer
  module Software
    class Component
      class ControlPanel < Softlayer::Software::Component
        autoload :Cpanel, 'softlayer/software/component/control_panel/cpanel'
        autoload :Idera, 'softlayer/software/component/control_panel/idera'
        autoload :Microsoft, 'softlayer/software/component/control_panel/microsoft'
        autoload :Parallels, 'softlayer/software/component/control_panel/parallels'
        autoload :R1soft, 'softlayer/software/component/control_panel/r1soft'
        autoload :Swsoft, 'softlayer/software/component/control_panel/swsoft'
        autoload :WebhostAutomation, 'softlayer/software/component/control_panel/webhost_automation'

        class Representer < Softlayer::Software::Component::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
