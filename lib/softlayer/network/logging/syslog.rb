module Softlayer
  class Network
    module Logging
      class Syslog < Softlayer::Entity
        attr_accessor :create_date
        attr_accessor :destination_ip_address
        attr_accessor :destination_port
        attr_accessor :event_type
        attr_accessor :message
        attr_accessor :protocol
        attr_accessor :source_ip_address
        attr_accessor :source_port
        attr_accessor :total_events

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :destination_ip_address, type: String
          property :destination_port, type: Integer
          property :event_type, type: String
          property :message, type: String
          property :protocol, type: String
          property :source_ip_address, type: String
          property :source_port, type: Integer
          property :total_events, type: Integer
        end
      end
    end
  end
end
