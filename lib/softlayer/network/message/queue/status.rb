module Softlayer
  class Network
    module Message
      class Queue
        class Status < Softlayer::Entity
          SERVICE = 'SoftLayer_Network_Message_Queue_Status'
          attr_accessor :description
          attr_accessor :id
          attr_accessor :name

          def get_object
            request(:get_object, Softlayer::Network::Message::Queue::Status)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :description, type: String
            property :id, type: Integer
            property :name, type: String
          end
        end
      end
    end
  end
end
