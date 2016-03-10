module Softlayer
  class Network
    module Service
      class Resource
        class Hub
          class Swift < Softlayer::Network::Service::Resource::Hub

            class Representer < Softlayer::Network::Service::Resource::Hub::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
