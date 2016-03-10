module Softlayer
  class Network
    class Monitor
      module Version1
        module Query
          class Host < Softlayer::Model
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

            def self.create_object(template_object = nil)
              message = {template_object: template_object}
              request(:create_object, Softlayer::Network::Monitor::Version1::Query::Host, message)
            end

            def self.create_objects(template_objects = nil)
              message = {template_objects: template_objects}
              request(:create_objects, Array[Softlayer::Network::Monitor::Version1::Query::Host], message)
            end

            def delete_object
              request(:delete_object, Boolean)
            end

            def self.delete_objects(template_objects = nil)
              message = {template_objects: template_objects}
              request(:delete_objects, Boolean, message)
            end

            def edit_object(template_object = nil)
              message = {template_object: template_object}
              request(:edit_object, Boolean, message)
            end

            def self.edit_objects(template_objects = nil)
              message = {template_objects: template_objects}
              request(:edit_objects, Boolean, message)
            end

            def self.find_by_hardware_id(hardware_id = nil)
              message = {hardware_id: hardware_id}
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

            class Representer < Representable::Decorator
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
