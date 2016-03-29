module Softlayer
  module Monitoring
    class Agent
      class Status < Softlayer::Entity
        SERVICE = 'SoftLayer_Monitoring_Agent_Status'
        attr_accessor :description
        attr_accessor :id
        attr_accessor :name

        def get_object
          request(:get_object, Softlayer::Monitoring::Agent::Status)
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
