module Softlayer
  class Network
    class Component
      class RemoteManagement < Softlayer::Network::Component

        class Representer < Softlayer::Network::Component::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
