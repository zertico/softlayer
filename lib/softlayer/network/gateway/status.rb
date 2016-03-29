module Softlayer
  class Network
    class Gateway
      class Status < Softlayer::Entity
        SERVICE = 'SoftLayer_Network_Gateway_Status'
        attr_accessor :description
        attr_accessor :id
        attr_accessor :key_name
        attr_accessor :name

        def get_object
          request(:get_object, Softlayer::Network::Gateway::Status)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :description, type: String
          property :id, type: Integer
          property :key_name, type: String
          property :name, type: String
        end
      end
    end
  end
end
