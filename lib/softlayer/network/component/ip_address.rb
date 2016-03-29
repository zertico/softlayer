module Softlayer
  class Network
    class Component
      class IpAddress < Softlayer::Entity
        attr_accessor :ip_address
        attr_accessor :network_component

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
