module Softlayer
  module Auxiliary
    module Network
      class Status < Softlayer::Entity
        SERVICE = 'SoftLayer_Auxiliary_Network_Status'

        # target
        def self.get_network_status(message)
          request(:get_network_status, Array[Softlayer::Container::Auxiliary::Network::Status::Reading], message)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
