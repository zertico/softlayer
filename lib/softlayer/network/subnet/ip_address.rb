module Softlayer
  class Network
    class Subnet
      class IpAddress < Softlayer::Entity
        SERVICE = 'SoftLayer_Network_Subnet_IpAddress'
        autoload :Global, 'softlayer/network/subnet/ip_address/global'
        autoload :Version6, 'softlayer/network/subnet/ip_address/version6'
        attr_accessor :id
        attr_accessor :ip_address
        attr_accessor :is_broadcast
        attr_accessor :is_gateway
        attr_accessor :is_network
        attr_accessor :is_reserved
        attr_accessor :note
        attr_accessor :subnet_id
        attr_accessor :allowed_network_storage_count
        attr_accessor :allowed_network_storage_replica_count
        attr_accessor :context_tunnel_translation_count
        attr_accessor :endpoint_subnet_count
        attr_accessor :protection_address_count
        attr_accessor :syslog_events_one_day_count
        attr_accessor :syslog_events_seven_day_count
        attr_accessor :top_ten_syslog_events_by_destination_port_one_day_count
        attr_accessor :top_ten_syslog_events_by_destination_port_seven_day_count
        attr_accessor :top_ten_syslog_events_by_protocols_one_day_count
        attr_accessor :top_ten_syslog_events_by_protocols_seven_day_count
        attr_accessor :top_ten_syslog_events_by_source_ip_one_day_count
        attr_accessor :top_ten_syslog_events_by_source_ip_seven_day_count
        attr_accessor :top_ten_syslog_events_by_source_port_one_day_count
        attr_accessor :top_ten_syslog_events_by_source_port_seven_day_count
        attr_accessor :virtual_license_count
        attr_accessor :allowed_host
        attr_accessor :allowed_network_storage
        attr_accessor :allowed_network_storage_replicas
        attr_accessor :application_delivery_controller
        attr_accessor :context_tunnel_translations
        attr_accessor :endpoint_subnets
        attr_accessor :guest_network_component
        attr_accessor :guest_network_component_binding
        attr_accessor :hardware
        attr_accessor :network_component
        attr_accessor :private_network_gateway
        attr_accessor :protection_address
        attr_accessor :public_network_gateway
        attr_accessor :remote_management_network_component
        attr_accessor :subnet
        attr_accessor :syslog_events_one_day
        attr_accessor :syslog_events_seven_days
        attr_accessor :top_ten_syslog_events_by_destination_port_one_day
        attr_accessor :top_ten_syslog_events_by_destination_port_seven_days
        attr_accessor :top_ten_syslog_events_by_protocols_one_day
        attr_accessor :top_ten_syslog_events_by_protocols_seven_days
        attr_accessor :top_ten_syslog_events_by_source_ip_one_day
        attr_accessor :top_ten_syslog_events_by_source_ip_seven_days
        attr_accessor :top_ten_syslog_events_by_source_port_one_day
        attr_accessor :top_ten_syslog_events_by_source_port_seven_days
        attr_accessor :virtual_guest
        attr_accessor :virtual_licenses

        # network_storage_template_object
        def allow_access_to_network_storage(message)
          request(:allow_access_to_network_storage, Boolean, message)
        end

        # network_storage_template_objects
        def allow_access_to_network_storage_list(message)
          request(:allow_access_to_network_storage_list, Boolean, message)
        end

        # template_object
        def edit_object(message)
          request(:edit_object, Boolean, message)
        end

        # template_objects
        def self.edit_objects(message)
          request(:edit_objects, Boolean, message)
        end

        # ip_address
        def self.find_by_ipv4_address(message)
          request(:find_by_ipv4_address, Softlayer::Network::Subnet::IpAddress, message)
        end

        def get_allowed_host
          request(:get_allowed_host, Softlayer::Network::Storage::Allowed::Host)
        end

        def get_allowed_network_storage
          request(:get_allowed_network_storage, Array[Softlayer::Network::Storage])
        end

        def get_allowed_network_storage_replicas
          request(:get_allowed_network_storage_replicas, Array[Softlayer::Network::Storage])
        end

        def get_application_delivery_controller
          request(:get_application_delivery_controller, Softlayer::Network::Application::Delivery::Controller)
        end

        # nas_type
        def get_attached_network_storages(message)
          request(:get_attached_network_storages, Array[Softlayer::Network::Storage], message)
        end

        # nas_type
        def get_available_network_storages(message)
          request(:get_available_network_storages, Array[Softlayer::Network::Storage], message)
        end

        # ip_address
        def self.get_by_ip_address(message)
          request(:get_by_ip_address, Softlayer::Network::Subnet::IpAddress, message)
        end

        def get_context_tunnel_translations
          request(:get_context_tunnel_translations, Array[Softlayer::Network::Tunnel::Module::Context::Address::Translation])
        end

        def get_endpoint_subnets
          request(:get_endpoint_subnets, Array[Softlayer::Network::Subnet])
        end

        def get_guest_network_component
          request(:get_guest_network_component, Softlayer::Virtual::Guest::Network::Component)
        end

        def get_guest_network_component_binding
          request(:get_guest_network_component_binding, Softlayer::Virtual::Guest::Network::Component::IpAddress)
        end

        def get_hardware
          request(:get_hardware, Softlayer::Hardware)
        end

        def get_network_component
          request(:get_network_component, Softlayer::Network::Component)
        end

        def get_object
          request(:get_object, Softlayer::Network::Subnet::IpAddress)
        end

        def get_private_network_gateway
          request(:get_private_network_gateway, Softlayer::Network::Gateway)
        end

        def get_protection_address
          request(:get_protection_address, Array[Softlayer::Network::Protection::Address])
        end

        def get_public_network_gateway
          request(:get_public_network_gateway, Softlayer::Network::Gateway)
        end

        def get_remote_management_network_component
          request(:get_remote_management_network_component, Softlayer::Network::Component)
        end

        def get_subnet
          request(:get_subnet, Softlayer::Network::Subnet)
        end

        def get_syslog_events_one_day
          request(:get_syslog_events_one_day, Array[Softlayer::Network::Logging::Syslog])
        end

        def get_syslog_events_seven_days
          request(:get_syslog_events_seven_days, Array[Softlayer::Network::Logging::Syslog])
        end

        def get_top_ten_syslog_events_by_destination_port_one_day
          request(:get_top_ten_syslog_events_by_destination_port_one_day, Array[Softlayer::Network::Logging::Syslog])
        end

        def get_top_ten_syslog_events_by_destination_port_seven_days
          request(:get_top_ten_syslog_events_by_destination_port_seven_days, Array[Softlayer::Network::Logging::Syslog])
        end

        def get_top_ten_syslog_events_by_protocols_one_day
          request(:get_top_ten_syslog_events_by_protocols_one_day, Array[Softlayer::Network::Logging::Syslog])
        end

        def get_top_ten_syslog_events_by_protocols_seven_days
          request(:get_top_ten_syslog_events_by_protocols_seven_days, Array[Softlayer::Network::Logging::Syslog])
        end

        def get_top_ten_syslog_events_by_source_ip_one_day
          request(:get_top_ten_syslog_events_by_source_ip_one_day, Array[Softlayer::Network::Logging::Syslog])
        end

        def get_top_ten_syslog_events_by_source_ip_seven_days
          request(:get_top_ten_syslog_events_by_source_ip_seven_days, Array[Softlayer::Network::Logging::Syslog])
        end

        def get_top_ten_syslog_events_by_source_port_one_day
          request(:get_top_ten_syslog_events_by_source_port_one_day, Array[Softlayer::Network::Logging::Syslog])
        end

        def get_top_ten_syslog_events_by_source_port_seven_days
          request(:get_top_ten_syslog_events_by_source_port_seven_days, Array[Softlayer::Network::Logging::Syslog])
        end

        def get_virtual_guest
          request(:get_virtual_guest, Softlayer::Virtual::Guest)
        end

        def get_virtual_licenses
          request(:get_virtual_licenses, Array[Softlayer::Software::VirtualLicense])
        end

        # network_storage_template_objects
        def remove_access_to_network_storage_list(message)
          request(:remove_access_to_network_storage_list, Boolean, message)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :id, type: Integer
          property :ip_address, type: String
          property :is_broadcast, type: Boolean
          property :is_gateway, type: Boolean
          property :is_network, type: Boolean
          property :is_reserved, type: Boolean
          property :note, type: String
          property :subnet_id, type: Integer
          property :allowed_network_storage_count, type: BigDecimal
          property :allowed_network_storage_replica_count, type: BigDecimal
          property :context_tunnel_translation_count, type: BigDecimal
          property :endpoint_subnet_count, type: BigDecimal
          property :protection_address_count, type: BigDecimal
          property :syslog_events_one_day_count, type: BigDecimal
          property :syslog_events_seven_day_count, type: BigDecimal
          property :top_ten_syslog_events_by_destination_port_one_day_count, type: BigDecimal
          property :top_ten_syslog_events_by_destination_port_seven_day_count, type: BigDecimal
          property :top_ten_syslog_events_by_protocols_one_day_count, type: BigDecimal
          property :top_ten_syslog_events_by_protocols_seven_day_count, type: BigDecimal
          property :top_ten_syslog_events_by_source_ip_one_day_count, type: BigDecimal
          property :top_ten_syslog_events_by_source_ip_seven_day_count, type: BigDecimal
          property :top_ten_syslog_events_by_source_port_one_day_count, type: BigDecimal
          property :top_ten_syslog_events_by_source_port_seven_day_count, type: BigDecimal
          property :virtual_license_count, type: BigDecimal
        end
      end
    end
  end
end
