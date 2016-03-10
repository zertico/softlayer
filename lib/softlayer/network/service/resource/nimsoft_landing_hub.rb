module Softlayer
  class Network
    module Service
      class Resource
        class NimsoftLandingHub < Softlayer::Network::Service::Resource::MonitoringHub

          class Representer < Softlayer::Network::Service::Resource::MonitoringHub::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
