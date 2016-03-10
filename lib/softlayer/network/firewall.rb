module Softlayer
  module Network
    module Firewall
      autoload :AccessControlList, 'softlayer/network/firewall/access_control_list'
      autoload :Interface, 'softlayer/network/firewall/interface'
      autoload :Template, 'softlayer/network/firewall/template'
      autoload :Module, 'softlayer/network/firewall/module'
      autoload :Update, 'softlayer/network/firewall/update'
    end
  end
end
