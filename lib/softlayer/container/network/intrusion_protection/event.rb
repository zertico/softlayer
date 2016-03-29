module Softlayer
  module Container
    module Network
      module IntrusionProtection
        class Event < Softlayer::Entity
          attr_accessor :cve_id
          attr_accessor :action_taken
          attr_accessor :attack_count
          attr_accessor :attack_long_description
          attr_accessor :attack_name
          attr_accessor :begin_time
          attr_accessor :bugtraq_id
          attr_accessor :classification
          attr_accessor :destination_ip_address
          attr_accessor :destination_port
          attr_accessor :end_time
          attr_accessor :platform
          attr_accessor :protocol
          attr_accessor :severity
          attr_accessor :signature_id
          attr_accessor :source_ip_address
          attr_accessor :source_port

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :cve_id, type: String
            property :action_taken, type: String
            property :attack_count, type: Integer
            property :attack_long_description, type: String
            property :attack_name, type: String
            property :begin_time, type: String
            property :bugtraq_id, type: String
            property :classification, type: String
            property :destination_ip_address, type: String
            property :destination_port, type: Integer
            property :end_time, type: String
            property :platform, type: String
            property :protocol, type: String
            property :severity, type: String
            property :signature_id, type: String
            property :source_ip_address, type: String
            property :source_port, type: Integer
          end
        end
      end
    end
  end
end
