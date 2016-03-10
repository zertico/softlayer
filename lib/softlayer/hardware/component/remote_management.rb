module Softlayer
  class Hardware
    class Component
      class RemoteManagement < Softlayer::Hardware::Component
        autoload :Command, 'softlayer/hardware/component/remote_management/command'
        autoload :User, 'softlayer/hardware/component/remote_management/user'
        attr_accessor :network_component

        class Representer < Softlayer::Hardware::Component::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
