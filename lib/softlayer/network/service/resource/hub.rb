module Softlayer
  class Network
    module Service
      class Resource
        class Hub < Softlayer::Network::Service::Resource
          autoload :Swift, 'softlayer/network/service/resource/hub/swift'

          class Representer < Softlayer::Network::Service::Resource::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
