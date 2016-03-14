module Softlayer
  class Hardware
    class SecurityModule < Softlayer::Hardware
      SERVICE = 'SoftLayer_Hardware_SecurityModule'
      attr_accessor :software_user_count
      attr_accessor :user_count
      attr_accessor :software_users
      attr_accessor :users

      def allow_access_to_network_storage(network_storage_template_object = nil)
        message = {network_storage_template_object: network_storage_template_object}
        request(:allow_access_to_network_storage, Boolean, message)
      end

      def allow_access_to_network_storage_list(network_storage_template_objects = nil)
        message = {network_storage_template_objects: network_storage_template_objects}
        request(:allow_access_to_network_storage_list, Boolean, message)
      end

      def capture_image(capture_template = nil)
        message = {capture_template: capture_template}
        request(:capture_image, Softlayer::Virtual::Guest::Block::Device::Template::Group, message)
      end

      def close_alarm(alarm_id = nil)
        message = {alarm_id: alarm_id}
        request(:close_alarm, Boolean, message)
      end

      def self.create_object(template_object = nil)
        message = {template_object: template_object}
        request(:create_object, Softlayer::Hardware::SecurityModule, message)
      end

      def delete_object
        request(:delete_object, Boolean)
      end

      def delete_software_component_passwords(software_component_passwords = nil)
        message = {software_component_passwords: software_component_passwords}
        request(:delete_software_component_passwords, Boolean, message)
      end

      def edit_software_component_passwords(software_component_passwords = nil)
        message = {software_component_passwords: software_component_passwords}
        request(:edit_software_component_passwords, Boolean, message)
      end

      def execute_remote_script(uri = nil)
        message = {uri: uri}
        request(:execute_remote_script, nil, message)
      end

      def self.find_by_ip_address(ip_address = nil)
        message = {ip_address: ip_address}
        request(:find_by_ip_address, Softlayer::Hardware::SecurityModule, message)
      end

      def self.generate_order_template(template_object = nil)
        message = {template_object: template_object}
        request(:generate_order_template, Softlayer::Container::Product::Order, message)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def get_active_components
        request(:get_active_components, Array[Softlayer::Hardware::Component])
      end

      def get_active_network_monitor_incident
        request(:get_active_network_monitor_incident, Array[Softlayer::Network::Monitor::Version1::Incident])
      end

      def get_alarm_history(start_date = nil, end_date = nil, alarm_id = nil)
        message = {start_date: start_date, end_date: end_date, alarm_id: alarm_id}
        request(:get_alarm_history, Array[Softlayer::Container::Monitoring::Alarm::History], message)
      end

      def get_all_power_components
        request(:get_all_power_components, Array[Softlayer::Hardware::Power::Component])
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

      def get_antivirus_spyware_software_component
        request(:get_antivirus_spyware_software_component, Softlayer::Software::Component)
      end

      def get_attached_network_storages(nas_type = nil)
        message = {nas_type: nas_type}
        request(:get_attached_network_storages, Array[Softlayer::Network::Storage], message)
      end

      def get_attributes
        request(:get_attributes, Array[Softlayer::Hardware::Attribute])
      end

      def get_available_network_storages(nas_type = nil)
        message = {nas_type: nas_type}
        request(:get_available_network_storages, Array[Softlayer::Network::Storage], message)
      end

      def get_average_daily_public_bandwidth_usage
        request(:get_average_daily_public_bandwidth_usage, Float)
      end

      def get_backend_incoming_bandwidth(start_date = nil, end_date = nil)
        message = {start_date: start_date, end_date: end_date}
        request(:get_backend_incoming_bandwidth, Float, message)
      end

      def get_backend_network_components
        request(:get_backend_network_components, Array[Softlayer::Network::Component])
      end

      def get_backend_outgoing_bandwidth(start_date = nil, end_date = nil)
        message = {start_date: start_date, end_date: end_date}
        request(:get_backend_outgoing_bandwidth, Float, message)
      end

      def get_backend_routers
        request(:get_backend_routers, Array[Softlayer::Hardware])
      end

      def get_bandwidth_allocation
        request(:get_bandwidth_allocation, Float)
      end

      def get_bandwidth_allotment_detail
        request(:get_bandwidth_allotment_detail, Softlayer::Network::Bandwidth::Version1::Allotment::Detail)
      end

      def get_benchmark_certifications
        request(:get_benchmark_certifications, Array[Softlayer::Hardware::Benchmark::Certification])
      end

      def get_billing_item
        request(:get_billing_item, Softlayer::Billing::Item::Hardware)
      end

      def get_billing_item_flag
        request(:get_billing_item_flag, Boolean)
      end

      def get_block_cancel_because_disconnected_flag
        request(:get_block_cancel_because_disconnected_flag, Boolean)
      end

      def get_business_continuance_insurance_flag
        request(:get_business_continuance_insurance_flag, Boolean)
      end

      def get_components
        request(:get_components, Array[Softlayer::Hardware::Component])
      end

      def get_continuous_data_protection_software_component
        request(:get_continuous_data_protection_software_component, Softlayer::Software::Component)
      end

      def self.get_create_object_options
        request(:get_create_object_options, Softlayer::Container::Hardware::Configuration)
      end

      def get_current_billable_bandwidth_usage
        request(:get_current_billable_bandwidth_usage, Float)
      end

      def get_current_billing_detail
        request(:get_current_billing_detail, Array[Softlayer::Billing::Item])
      end

      def get_current_billing_total
        request(:get_current_billing_total, Float)
      end

      def get_daily_average(start_date = nil, end_date = nil)
        message = {start_date: start_date, end_date: end_date}
        request(:get_daily_average, Float, message)
      end

      def get_datacenter
        request(:get_datacenter, Softlayer::Location)
      end

      def get_datacenter_name
        request(:get_datacenter_name, String)
      end

      def get_downlink_hardware
        request(:get_downlink_hardware, Array[Softlayer::Hardware])
      end

      def get_downlink_network_hardware
        request(:get_downlink_network_hardware, Array[Softlayer::Hardware])
      end

      def get_downlink_servers
        request(:get_downlink_servers, Array[Softlayer::Hardware])
      end

      def get_downlink_virtual_guests
        request(:get_downlink_virtual_guests, Array[Softlayer::Virtual::Guest])
      end

      def get_downstream_hardware_bindings
        request(:get_downstream_hardware_bindings, Array[Softlayer::Network::Component::Uplink::Hardware])
      end

      def get_downstream_network_hardware
        request(:get_downstream_network_hardware, Array[Softlayer::Hardware])
      end

      def get_downstream_network_hardware_with_incidents
        request(:get_downstream_network_hardware_with_incidents, Array[Softlayer::Hardware])
      end

      def get_downstream_servers
        request(:get_downstream_servers, Array[Softlayer::Hardware])
      end

      def get_downstream_virtual_guests
        request(:get_downstream_virtual_guests, Array[Softlayer::Virtual::Guest])
      end

      def get_drive_controllers
        request(:get_drive_controllers, Array[Softlayer::Hardware::Component])
      end

      def get_evault_network_storage
        request(:get_evault_network_storage, Array[Softlayer::Network::Storage])
      end

      def get_firewall_service_component
        request(:get_firewall_service_component, Softlayer::Network::Component::Firewall)
      end

      def get_fixed_configuration_preset
        request(:get_fixed_configuration_preset, Softlayer::Product::Package::Preset)
      end

      def get_frontend_incoming_bandwidth(start_date = nil, end_date = nil)
        message = {start_date: start_date, end_date: end_date}
        request(:get_frontend_incoming_bandwidth, Float, message)
      end

      def get_frontend_network_components
        request(:get_frontend_network_components, Array[Softlayer::Network::Component])
      end

      def get_frontend_outgoing_bandwidth(start_date = nil, end_date = nil)
        message = {start_date: start_date, end_date: end_date}
        request(:get_frontend_outgoing_bandwidth, Float, message)
      end

      def get_frontend_routers
        request(:get_frontend_routers, Array[Softlayer::Hardware])
      end

      def get_global_identifier
        request(:get_global_identifier, String)
      end

      def get_hard_drives
        request(:get_hard_drives, Array[Softlayer::Hardware::Component])
      end

      def get_hardware_chassis
        request(:get_hardware_chassis, Softlayer::Hardware::Chassis)
      end

      def get_hardware_function
        request(:get_hardware_function, Softlayer::Hardware::Function)
      end

      def get_hardware_function_description
        request(:get_hardware_function_description, String)
      end

      def get_hardware_status
        request(:get_hardware_status, Softlayer::Hardware::Status)
      end

      def get_has_trusted_platform_module_billing_item_flag
        request(:get_has_trusted_platform_module_billing_item_flag, Boolean)
      end

      def get_host_ips_software_component
        request(:get_host_ips_software_component, Softlayer::Software::Component)
      end

      def get_hourly_bandwidth(mode = nil, day = nil)
        message = {mode: mode, day: day}
        request(:get_hourly_bandwidth, Array[Softlayer::Metric::Tracking::Object::Data], message)
      end

      def get_hourly_billing_flag
        request(:get_hourly_billing_flag, Boolean)
      end

      def get_inbound_bandwidth_usage
        request(:get_inbound_bandwidth_usage, Float)
      end

      def get_inbound_public_bandwidth_usage
        request(:get_inbound_public_bandwidth_usage, Float)
      end

      def get_last_transaction
        request(:get_last_transaction, Softlayer::Provisioning::Version1::Transaction)
      end

      def get_latest_network_monitor_incident
        request(:get_latest_network_monitor_incident, Softlayer::Network::Monitor::Version1::Incident)
      end

      def get_location
        request(:get_location, Softlayer::Location)
      end

      def get_location_path_string
        request(:get_location_path_string, String)
      end

      def get_lockbox_network_storage
        request(:get_lockbox_network_storage, Softlayer::Network::Storage)
      end

      def get_managed_resource_flag
        request(:get_managed_resource_flag, Boolean)
      end

      def get_memory
        request(:get_memory, Array[Softlayer::Hardware::Component])
      end

      def get_memory_capacity
        request(:get_memory_capacity, Integer)
      end

      def get_metric_tracking_object
        request(:get_metric_tracking_object, Softlayer::Metric::Tracking::Object::HardwareServer)
      end

      def get_monitoring_active_alarms(start_date = nil, end_date = nil)
        message = {start_date: start_date, end_date: end_date}
        request(:get_monitoring_active_alarms, Array[Softlayer::Container::Monitoring::Alarm::History], message)
      end

      def get_monitoring_agents
        request(:get_monitoring_agents, Array[Softlayer::Monitoring::Agent])
      end

      def get_monitoring_closed_alarms(start_date = nil, end_date = nil)
        message = {start_date: start_date, end_date: end_date}
        request(:get_monitoring_closed_alarms, Array[Softlayer::Container::Monitoring::Alarm::History], message)
      end

      def get_monitoring_robot
        request(:get_monitoring_robot, Softlayer::Monitoring::Robot)
      end

      def get_monitoring_service_component
        request(:get_monitoring_service_component, Softlayer::Network::Monitor::Version1::Query::Host::Stratum)
      end

      def get_monitoring_service_eligibility_flag
        request(:get_monitoring_service_eligibility_flag, Boolean)
      end

      def get_monitoring_service_flag
        request(:get_monitoring_service_flag, Boolean)
      end

      def get_motherboard
        request(:get_motherboard, Softlayer::Hardware::Component)
      end

      def get_network_cards
        request(:get_network_cards, Array[Softlayer::Hardware::Component])
      end

      def get_network_components
        request(:get_network_components, Array[Softlayer::Network::Component])
      end

      def get_network_gateway_member
        request(:get_network_gateway_member, Softlayer::Network::Gateway::Member)
      end

      def get_network_gateway_member_flag
        request(:get_network_gateway_member_flag, Boolean)
      end

      def get_network_management_ip_address
        request(:get_network_management_ip_address, String)
      end

      def get_network_monitor_attached_down_hardware
        request(:get_network_monitor_attached_down_hardware, Array[Softlayer::Hardware])
      end

      def get_network_monitor_attached_down_virtual_guests
        request(:get_network_monitor_attached_down_virtual_guests, Array[Softlayer::Virtual::Guest])
      end

      def get_network_monitor_incidents
        request(:get_network_monitor_incidents, Array[Softlayer::Network::Monitor::Version1::Incident])
      end

      def get_network_monitors
        request(:get_network_monitors, Array[Softlayer::Network::Monitor::Version1::Query::Host])
      end

      def get_network_status
        request(:get_network_status, String)
      end

      def get_network_status_attribute
        request(:get_network_status_attribute, Softlayer::Hardware::Attribute)
      end

      def get_network_storage
        request(:get_network_storage, Array[Softlayer::Network::Storage])
      end

      def get_network_vlans
        request(:get_network_vlans, Array[Softlayer::Network::Vlan])
      end

      def get_next_billing_cycle_bandwidth_allocation
        request(:get_next_billing_cycle_bandwidth_allocation, Float)
      end

      def get_notes_history
        request(:get_notes_history, Array[Softlayer::Hardware::Note])
      end

      def get_object
        request(:get_object, Softlayer::Hardware::SecurityModule)
      end

      def get_operating_system
        request(:get_operating_system, Softlayer::Software::Component::OperatingSystem)
      end

      def get_operating_system_reference_code
        request(:get_operating_system_reference_code, String)
      end

      def get_outbound_bandwidth_usage
        request(:get_outbound_bandwidth_usage, Float)
      end

      def get_outbound_public_bandwidth_usage
        request(:get_outbound_public_bandwidth_usage, Float)
      end

      def get_point_of_presence_location
        request(:get_point_of_presence_location, Softlayer::Location)
      end

      def get_power_components
        request(:get_power_components, Array[Softlayer::Hardware::Power::Component])
      end

      def get_power_supply
        request(:get_power_supply, Array[Softlayer::Hardware::Component])
      end

      def get_primary_backend_ip_address
        request(:get_primary_backend_ip_address, String)
      end

      def get_primary_backend_network_component
        request(:get_primary_backend_network_component, Softlayer::Network::Component)
      end

      def get_primary_ip_address
        request(:get_primary_ip_address, String)
      end

      def get_primary_network_component
        request(:get_primary_network_component, Softlayer::Network::Component)
      end

      def get_private_bandwidth_data(start_time = nil, end_time = nil)
        message = {start_time: start_time, end_time: end_time}
        request(:get_private_bandwidth_data, Array[Softlayer::Metric::Tracking::Object::Data], message)
      end

      def get_private_network_only_flag
        request(:get_private_network_only_flag, Boolean)
      end

      def get_processor_core_amount
        request(:get_processor_core_amount, Integer)
      end

      def get_processor_physical_core_amount
        request(:get_processor_physical_core_amount, Integer)
      end

      def get_processors
        request(:get_processors, Array[Softlayer::Hardware::Component])
      end

      def get_public_bandwidth_data(start_time = nil, end_time = nil)
        message = {start_time: start_time, end_time: end_time}
        request(:get_public_bandwidth_data, Array[Softlayer::Metric::Tracking::Object::Data], message)
      end

      def get_rack
        request(:get_rack, Softlayer::Location)
      end

      def get_raid_controllers
        request(:get_raid_controllers, Array[Softlayer::Hardware::Component])
      end

      def get_recent_events
        request(:get_recent_events, Array[Softlayer::Notification::Occurrence::Event])
      end

      def get_remote_management_accounts
        request(:get_remote_management_accounts, Array[Softlayer::Hardware::Component::RemoteManagement::User])
      end

      def get_remote_management_component
        request(:get_remote_management_component, Softlayer::Network::Component)
      end

      def get_resource_group_member_references
        request(:get_resource_group_member_references, Array[Softlayer::Resource::Group::Member])
      end

      def get_resource_group_roles
        request(:get_resource_group_roles, Array[Softlayer::Resource::Group::Role])
      end

      def get_resource_groups
        request(:get_resource_groups, Array[Softlayer::Resource::Group])
      end

      def get_routers
        request(:get_routers, Array[Softlayer::Hardware])
      end

      def get_scale_assets
        request(:get_scale_assets, Array[Softlayer::Scale::Asset])
      end

      def get_security_scan_requests
        request(:get_security_scan_requests, Array[Softlayer::Network::Security::Scanner::Request])
      end

      def get_sensor_data
        request(:get_sensor_data, Array[Softlayer::Container::RemoteManagement::SensorReading])
      end

      def get_sensor_data_with_graphs
        request(:get_sensor_data_with_graphs, Softlayer::Container::RemoteManagement::SensorReadingsWithGraphs)
      end

      def get_server_fan_speed_graphs
        request(:get_server_fan_speed_graphs, Array[Softlayer::Container::RemoteManagement::Graphs::SensorSpeed])
      end

      def get_server_power_state
        request(:get_server_power_state, String)
      end

      def get_server_room
        request(:get_server_room, Softlayer::Location)
      end

      def get_server_temperature_graphs
        request(:get_server_temperature_graphs, Array[Softlayer::Container::RemoteManagement::Graphs::SensorTemperature])
      end

      def get_service_provider
        request(:get_service_provider, Softlayer::Service::Provider)
      end

      def get_software_components
        request(:get_software_components, Array[Softlayer::Software::Component])
      end

      def get_software_users
        request(:get_software_users, Array[Softlayer::Software::Component::Password])
      end

      def get_spare_pool_billing_item
        request(:get_spare_pool_billing_item, Softlayer::Billing::Item::Hardware)
      end

      def get_ssh_keys
        request(:get_ssh_keys, Array[Softlayer::Security::Ssh::Key])
      end

      def get_storage_network_components
        request(:get_storage_network_components, Array[Softlayer::Network::Component])
      end

      def get_tag_references
        request(:get_tag_references, Array[Softlayer::Tag::Reference])
      end

      def get_top_level_location
        request(:get_top_level_location, Softlayer::Location)
      end

      def get_transaction_history
        request(:get_transaction_history, Array[Softlayer::Provisioning::Version1::Transaction::History])
      end

      def get_upgrade_item_prices
        request(:get_upgrade_item_prices, Array[Softlayer::Product::Item::Price])
      end

      def get_upgrade_request
        request(:get_upgrade_request, Softlayer::Product::Upgrade::Request)
      end

      def get_uplink_hardware
        request(:get_uplink_hardware, Softlayer::Hardware)
      end

      def get_uplink_network_components
        request(:get_uplink_network_components, Array[Softlayer::Network::Component])
      end

      def get_user_data
        request(:get_user_data, Array[Softlayer::Hardware::Attribute])
      end

      def get_users
        request(:get_users, Array[Softlayer::User::Customer])
      end

      def get_virtual_chassis
        request(:get_virtual_chassis, Softlayer::Hardware::Group)
      end

      def get_virtual_chassis_siblings
        request(:get_virtual_chassis_siblings, Array[Softlayer::Hardware])
      end

      def get_virtual_host
        request(:get_virtual_host, Softlayer::Virtual::Host)
      end

      def get_virtual_licenses
        request(:get_virtual_licenses, Array[Softlayer::Software::VirtualLicense])
      end

      def get_virtual_rack
        request(:get_virtual_rack, Softlayer::Network::Bandwidth::Version1::Allotment)
      end

      def get_virtual_rack_id
        request(:get_virtual_rack_id, Integer)
      end

      def get_virtual_rack_name
        request(:get_virtual_rack_name, String)
      end

      def get_virtualization_platform
        request(:get_virtualization_platform, Softlayer::Software::Component)
      end

      def import_virtual_host
        request(:import_virtual_host, Softlayer::Virtual::Host)
      end

      def is_pingable
        request(:is_pingable, Boolean)
      end

      def ping
        request(:ping, String)
      end

      def power_cycle
        request(:power_cycle, Boolean)
      end

      def power_off
        request(:power_off, Boolean)
      end

      def power_on
        request(:power_on, Boolean)
      end

      def reboot_default
        request(:reboot_default, Boolean)
      end

      def reboot_hard
        request(:reboot_hard, Boolean)
      end

      def reboot_soft
        request(:reboot_soft, Boolean)
      end

      def remove_access_to_network_storage(network_storage_template_object = nil)
        message = {network_storage_template_object: network_storage_template_object}
        request(:remove_access_to_network_storage, Boolean, message)
      end

      def remove_access_to_network_storage_list(network_storage_template_objects = nil)
        message = {network_storage_template_objects: network_storage_template_objects}
        request(:remove_access_to_network_storage_list, Boolean, message)
      end

      def set_tags(tags = nil)
        message = {tags: tags}
        request(:set_tags, Boolean, message)
      end

      class Representer < Softlayer::Hardware::Representer
        include Representable::Hash
        include Representable::Coercion
        property :software_user_count, type: BigDecimal
        property :user_count, type: BigDecimal
      end
    end
  end
end
