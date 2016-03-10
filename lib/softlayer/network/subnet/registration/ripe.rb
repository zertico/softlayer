module Softlayer
  class Network
    class Subnet
      class Registration
        class Ripe < Softlayer::Network::Subnet::Registration

          class Representer < Softlayer::Network::Subnet::Registration::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
