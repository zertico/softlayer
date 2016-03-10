module Softlayer
  class Tag
    class Reference
      module Network
        autoload :Vlan, 'softlayer/tag/reference/network/vlan'
        autoload :Application, 'softlayer/tag/reference/network/application'
      end
    end
  end
end
