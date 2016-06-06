module Softlayer
  class Network
    module Service
      class Resource
        class MonitoringHub < Softlayer::Network::Service::Resource
          attr_accessor :adn_services_ip
          attr_accessor :hub_address
          attr_accessor :hub_connection_timeout
          attr_accessor :robots_count
          attr_accessor :robots_max

          class Representer < Softlayer::Network::Service::Resource::Representer
            include Representable::Hash
            include Representable::Coercion
            property :adn_services_ip, type: String
            property :hub_address, type: String
            property :hub_connection_timeout, type: String
            property :robots_count, type: String
            property :robots_max, type: String
          end
        end
      end
    end
  end
end
