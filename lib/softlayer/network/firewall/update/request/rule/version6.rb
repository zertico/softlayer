module Softlayer
  class Network
    module Firewall
      module Update
        class Request
          class Rule
            class Version6 < Softlayer::Network::Firewall::Update::Request::Rule

              class Representer < Softlayer::Network::Firewall::Update::Request::Rule::Representer
                include Representable::Hash
                include Representable::Coercion
              end
            end
          end
        end
      end
    end
  end
end
