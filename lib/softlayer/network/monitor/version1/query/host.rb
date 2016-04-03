module Softlayer
  class Network
    class Monitor
      module Version1
        module Query
          class Host < Softlayer::Entity
            SERVICE = 'SoftLayer_Network_Monitor_Version1_Query_Host'
            autoload :Stratum, 'softlayer/network/monitor/version1/query/host/stratum'
            attr_accessor :arg1_value
            attr_accessor :guest_id
            attr_accessor :hardware_id
            attr_accessor :host_id
            attr_accessor :id
            attr_accessor :ip_address
            attr_accessor :query_type_id
            attr_accessor :response_action_id
            attr_accessor :status
            attr_accessor :wait_cycles
            attr_accessor :hardware
            attr_accessor :last_result
            attr_accessor :query_type
            attr_accessor :response_action
            attr_accessor :subnet

            # template_object
            def self.create_object(message)
              request(:create_object, Softlayer::Network::Monitor::Version1::Query::Host, message)
            end

            # template_objects
            def self.create_objects(message)
              request(:create_objects, Array[Softlayer::Network::Monitor::Version1::Query::Host], message)
            end

            def delete_object
              request(:delete_object, Boolean)
            end

            # template_objects
            def self.delete_objects(message)
              request(:delete_objects, Boolean, message)
            end

            # template_object
            def edit_object(message)
              request(:edit_object, Boolean, message)
            end

            # template_objects
            def self.edit_objects(message)
              request(:edit_objects, Boolean, message)
            end

            # hardware_id
            def self.find_by_hardware_id(message)
              request(:find_by_hardware_id, Array[Softlayer::Network::Monitor::Version1::Query::Host], message)
            end

            def get_hardware
              request(:get_hardware, Softlayer::Hardware)
            end

            def get_last_result
              request(:get_last_result, Softlayer::Network::Monitor::Version1::Query::Result)
            end

            def get_object
              request(:get_object, Softlayer::Network::Monitor::Version1::Query::Host)
            end

            def get_query_type
              request(:get_query_type, Softlayer::Network::Monitor::Version1::Query::Type)
            end

            def get_response_action
              request(:get_response_action, Softlayer::Network::Monitor::Version1::Query::ResponseType)
            end

            def get_subnet
              request(:get_subnet, Softlayer::Network::Subnet)
            end

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :arg1_value, type: String
              property :guest_id, type: Integer
              property :hardware_id, type: Integer
              property :host_id, type: Integer
              property :id, type: Integer
              property :ip_address, type: String
              property :query_type_id, type: Integer
              property :response_action_id, type: Integer
              property :status, type: String
              property :wait_cycles, type: Integer
            end
          end
        end
      end
    end
  end
end
