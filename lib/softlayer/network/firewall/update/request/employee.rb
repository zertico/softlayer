module Softlayer
  class Network
    module Firewall
      module Update
        class Request
          class Employee < Softlayer::Network::Firewall::Update::Request

            class Representer < Softlayer::Network::Firewall::Update::Request::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
