module Softlayer
  class Network
    class Component
      class IpAddress < Softlayer::Model
        attr_accessor :ip_address
        attr_accessor :network_component

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
