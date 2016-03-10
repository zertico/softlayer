module Softlayer
  class Network
    class Subnet
      class IpAddress
        class Version6 < Softlayer::Network::Subnet::IpAddress
          attr_accessor :public_version6_network_gateway

          class Representer < Softlayer::Network::Subnet::IpAddress::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
