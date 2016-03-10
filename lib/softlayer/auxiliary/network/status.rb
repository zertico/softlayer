module Softlayer
  module Auxiliary
    module Network
      class Status < Softlayer::Model
        SERVICE = 'SoftLayer_Auxiliary_Network_Status'

        def self.get_network_status(target = nil)
          message = {target: target}
          request(:get_network_status, Array[Softlayer::Container::Auxiliary::Network::Status::Reading], message)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
