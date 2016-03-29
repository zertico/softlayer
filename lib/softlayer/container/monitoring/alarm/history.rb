module Softlayer
  module Container
    module Monitoring
      module Alarm
        class History < Softlayer::Entity
          attr_accessor :account_id
          attr_accessor :agent_id
          attr_accessor :alarm_id
          attr_accessor :closed_date
          attr_accessor :create_date
          attr_accessor :message
          attr_accessor :robot_id
          attr_accessor :severity

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :account_id, type: Integer
            property :agent_id, type: Integer
            property :alarm_id, type: String
            property :closed_date, type: DateTime
            property :create_date, type: DateTime
            property :message, type: String
            property :robot_id, type: Integer
            property :severity, type: String
          end
        end
      end
    end
  end
end
