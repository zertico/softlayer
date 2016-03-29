module Softlayer
  module Container
    module Auxiliary
      module Network
        module Status
          class Reading < Softlayer::Entity
            attr_accessor :average_ping
            attr_accessor :fails
            attr_accessor :frequency
            attr_accessor :label
            attr_accessor :last_check_date
            attr_accessor :last_down_date
            attr_accessor :latency
            attr_accessor :location
            attr_accessor :maximum_ping
            attr_accessor :minimum_ping
            attr_accessor :ping_loss
            attr_accessor :start_date
            attr_accessor :status_code
            attr_accessor :status_message
            attr_accessor :target
            attr_accessor :target_type

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :average_ping, type: Float
              property :fails, type: Integer
              property :frequency, type: Integer
              property :label, type: String
              property :last_check_date, type: DateTime
              property :last_down_date, type: DateTime
              property :latency, type: Float
              property :location, type: String
              property :maximum_ping, type: Float
              property :minimum_ping, type: Float
              property :ping_loss, type: Float
              property :start_date, type: DateTime
              property :status_code, type: String
              property :status_message, type: String
              property :target, type: String
              property :target_type, type: String
            end
          end
        end
      end
    end
  end
end
