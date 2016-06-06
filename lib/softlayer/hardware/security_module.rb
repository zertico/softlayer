module Softlayer
  class Hardware
    class SecurityModule < Softlayer::Hardware::Server
      SERVICE = 'SoftLayer_Hardware_SecurityModule'

      def activate_private_port
        request(:activate_private_port, Boolean)
      end

      def activate_public_port
        request(:activate_public_port, Boolean)
      end

      # network_storage_template_object
      def allow_access_to_network_storage(message)
        request(:allow_access_to_network_storage, Boolean, message)
      end

      # network_storage_template_objects
      def allow_access_to_network_storage_list(message)
        request(:allow_access_to_network_storage_list, Boolean, message)
      end

      # no_os_boot_environment
      def boot_to_rescue_layer(message)
        request(:boot_to_rescue_layer, Boolean, message)
      end

      # capture_template
      def capture_image(message)
        request(:capture_image, Softlayer::Virtual::Guest::Block::Device::Template::Group, message)
      end

      # alarm_id
      def close_alarm(message)
        request(:close_alarm, Boolean, message)
      end

      # ipmi
      # raid_controller
      # bios
      # harddrive
      def create_firmware_update_transaction(message)
        request(:create_firmware_update_transaction, Boolean, message)
      end

      # template_object
      def self.create_object(message)
        request(:create_object, Softlayer::Hardware::SecurityModule, message)
      end

      # install_codes
      # return_boolean
      def create_post_software_install_transaction(message)
        request(:create_post_software_install_transaction, Boolean, message)
      end

      def delete_object
        request(:delete_object, Boolean)
      end

      # software_component_passwords
      def delete_software_component_passwords(message)
        request(:delete_software_component_passwords, Boolean, message)
      end

      # template_object
      def edit_object(message)
        request(:edit_object, Boolean, message)
      end

      # software_component_passwords
      def edit_software_component_passwords(message)
        request(:edit_software_component_passwords, Boolean, message)
      end

      # uri
      def execute_remote_script(message)
        request(:execute_remote_script, nil, message)
      end

      # ip_address
      def self.find_by_ip_address(message)
        request(:find_by_ip_address, Softlayer::Hardware::SecurityModule, message)
      end

      # template_object
      def self.generate_order_template(message)
        request(:generate_order_template, Softlayer::Container::Product::Order, message)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def get_active_components
        request(:get_active_components, Array[Softlayer::Hardware::Component])
      end

      def get_active_network_firewall_billing_item
        request(:get_active_network_firewall_billing_item, Softlayer::Billing::Item)
      end

      def get_active_network_monitor_incident
        request(:get_active_network_monitor_incident, Array[Softlayer::Network::Monitor::Version1::Incident])
      end

      def get_active_tickets
        request(:get_active_tickets, Array[Softlayer::Ticket])
      end

      def get_active_transaction
        request(:get_active_transaction, Softlayer::Provisioning::Version1::Transaction)
      end

      def get_active_transactions
        request(:get_active_transactions, Array[Softlayer::Provisioning::Version1::Transaction])
      end

      # start_date
      # end_date
      # alarm_id
      def get_alarm_history(message)
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

      # nas_type
      def get_attached_network_storages(message)
        request(:get_attached_network_storages, Array[Softlayer::Network::Storage], message)
      end

      def get_attributes
        request(:get_attributes, Array[Softlayer::Hardware::Attribute])
      end

      def get_available_monitoring
        request(:get_available_monitoring, Array[Softlayer::Network::Monitor::Version1::Query::Host::Stratum])
      end

      # nas_type
      def get_available_network_storages(message)
        request(:get_available_network_storages, Array[Softlayer::Network::Storage], message)
      end

      def get_average_daily_bandwidth_usage
        request(:get_average_daily_bandwidth_usage, Float)
      end

      def get_average_daily_private_bandwidth_usage
        request(:get_average_daily_private_bandwidth_usage, Float)
      end

      def get_average_daily_public_bandwidth_usage
        request(:get_average_daily_public_bandwidth_usage, Float)
      end

      # start_date
      # end_date
      def get_backend_bandwidth_usage(message)
        request(:get_backend_bandwidth_usage, Array[Softlayer::Metric::Tracking::Object::Data], message)
      end

      # start_date
      # end_date
      def get_backend_bandwidth_use(message)
        request(:get_backend_bandwidth_use, Array[Softlayer::Network::Bandwidth::Version1::Usage::Detail], message)
      end

      # start_date
      # end_date
      def get_backend_incoming_bandwidth(message)
        request(:get_backend_incoming_bandwidth, Float, message)
      end

      def get_backend_network_components
        request(:get_backend_network_components, Array[Softlayer::Network::Component])
      end

      # start_date
      # end_date
      def get_backend_outgoing_bandwidth(message)
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

      # start_date
      # end_date
      def get_bandwidth_for_date_range(message)
        request(:get_bandwidth_for_date_range, Array[Softlayer::Metric::Tracking::Object::Data], message)
      end

      # network_type
      # snapshot_range
      # draw
      # date_specified
      def get_bandwidth_image(message)
        request(:get_bandwidth_image, Softlayer::Container::Bandwidth::GraphOutputs, message)
      end

      def get_benchmark_certifications
        request(:get_benchmark_certifications, Array[Softlayer::Hardware::Benchmark::Certification])
      end

      def get_billing_cycle_bandwidth_usage
        request(:get_billing_cycle_bandwidth_usage, Array[Softlayer::Network::Bandwidth::Usage])
      end

      def get_billing_cycle_private_bandwidth_usage
        request(:get_billing_cycle_private_bandwidth_usage, Softlayer::Network::Bandwidth::Usage)
      end

      def get_billing_cycle_public_bandwidth_usage
        request(:get_billing_cycle_public_bandwidth_usage, Softlayer::Network::Bandwidth::Usage)
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

      def get_contains_solid_state_drives_flag
        request(:get_contains_solid_state_drives_flag, Boolean)
      end

      def get_continuous_data_protection_software_component
        request(:get_continuous_data_protection_software_component, Softlayer::Software::Component)
      end

      def get_control_panel
        request(:get_control_panel, Softlayer::Software::Component::ControlPanel)
      end

      def get_cost
        request(:get_cost, Float)
      end

      def self.get_create_object_options
        request(:get_create_object_options, Softlayer::Container::Hardware::Configuration)
      end

      def get_current_bandwidth_summary
        request(:get_current_bandwidth_summary, Softlayer::Metric::Tracking::Object::Bandwidth::Summary)
      end

      def get_current_benchmark_certification_result_file
        request(:get_current_benchmark_certification_result_file, Softlayer::Base64Binary)
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

      # graph_data
      def get_custom_bandwidth_data_by_date(message)
        request(:get_custom_bandwidth_data_by_date, Softlayer::Container::Graph, message)
      end

      def get_customer_installed_operating_system_flag
        request(:get_customer_installed_operating_system_flag, Boolean)
      end

      def get_customer_owned_flag
        request(:get_customer_owned_flag, Boolean)
      end

      # start_date
      # end_date
      def get_daily_average(message)
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

      def get_firewall_protectable_subnets
        request(:get_firewall_protectable_subnets, Array[Softlayer::Network::Subnet])
      end

      def get_firewall_service_component
        request(:get_firewall_service_component, Softlayer::Network::Component::Firewall)
      end

      def get_fixed_configuration_preset
        request(:get_fixed_configuration_preset, Softlayer::Product::Package::Preset)
      end

      # start_date
      # end_date
      def get_frontend_bandwidth_usage(message)
        request(:get_frontend_bandwidth_usage, Array[Softlayer::Metric::Tracking::Object::Data], message)
      end

      # start_date
      # end_date
      def get_frontend_bandwidth_use(message)
        request(:get_frontend_bandwidth_use, Array[Softlayer::Network::Bandwidth::Version1::Usage::Detail], message)
      end

      # start_date
      # end_date
      def get_frontend_incoming_bandwidth(message)
        request(:get_frontend_incoming_bandwidth, Float, message)
      end

      def get_frontend_network_components
        request(:get_frontend_network_components, Array[Softlayer::Network::Component])
      end

      # start_date
      # end_date
      def get_frontend_outgoing_bandwidth(message)
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

      # ip_address
      def self.get_hardware_by_ip_address(message)
        request(:get_hardware_by_ip_address, Softlayer::Hardware::SecurityModule, message)
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

      # mode
      # day
      def get_hourly_bandwidth(message)
        request(:get_hourly_bandwidth, Array[Softlayer::Metric::Tracking::Object::Data], message)
      end

      def get_hourly_billing_flag
        request(:get_hourly_billing_flag, Boolean)
      end

      def get_inbound_bandwidth_usage
        request(:get_inbound_bandwidth_usage, Float)
      end

      def get_inbound_private_bandwidth_usage
        request(:get_inbound_private_bandwidth_usage, Float)
      end

      def get_inbound_public_bandwidth_usage
        request(:get_inbound_public_bandwidth_usage, Float)
      end

      # software_descriptions
      # include_translations_flag
      # return_all_prices_flag
      def get_item_prices_from_software_descriptions(message)
        request(:get_item_prices_from_software_descriptions, Array[Softlayer::Product::Item], message)
      end

      def get_last_operating_system_reload
        request(:get_last_operating_system_reload, Softlayer::Provisioning::Version1::Transaction)
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

      def get_management_network_component
        request(:get_management_network_component, Softlayer::Network::Component)
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

      def get_metric_tracking_object_id
        request(:get_metric_tracking_object_id, Integer)
      end

      # start_date
      # end_date
      def get_monitoring_active_alarms(message)
        request(:get_monitoring_active_alarms, Array[Softlayer::Container::Monitoring::Alarm::History], message)
      end

      def get_monitoring_agents
        request(:get_monitoring_agents, Array[Softlayer::Monitoring::Agent])
      end

      # start_date
      # end_date
      def get_monitoring_closed_alarms(message)
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

      def get_monitoring_user_notification
        request(:get_monitoring_user_notification, Array[Softlayer::User::Customer::Notification::Hardware])
      end

      def get_motherboard
        request(:get_motherboard, Softlayer::Hardware::Component)
      end

      def get_network_cards
        request(:get_network_cards, Array[Softlayer::Hardware::Component])
      end

      def get_network_component_firewall_protectable_ip_addresses
        request(:get_network_component_firewall_protectable_ip_addresses, Array[Softlayer::Network::Subnet::IpAddress])
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

      def get_open_cancellation_ticket
        request(:get_open_cancellation_ticket, Softlayer::Ticket)
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

      def get_outbound_private_bandwidth_usage
        request(:get_outbound_private_bandwidth_usage, Float)
      end

      def get_outbound_public_bandwidth_usage
        request(:get_outbound_public_bandwidth_usage, Float)
      end

      def get_over_bandwidth_allocation_flag
        request(:get_over_bandwidth_allocation_flag, Integer)
      end

      def self.get_pm_info
        request(:get_pm_info, nil)
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

      def get_primary_drive_size
        request(:get_primary_drive_size, Integer)
      end

      def get_primary_ip_address
        request(:get_primary_ip_address, String)
      end

      def get_primary_network_component
        request(:get_primary_network_component, Softlayer::Network::Component)
      end

      # start_time
      # end_time
      def get_private_bandwidth_data(message)
        request(:get_private_bandwidth_data, Array[Softlayer::Metric::Tracking::Object::Data], message)
      end

      def get_private_bandwidth_data_summary
        request(:get_private_bandwidth_data_summary, Softlayer::Container::Network::Bandwidth::Data::Summary)
      end

      # start_time
      # end_time
      def get_private_bandwidth_graph_image(message)
        request(:get_private_bandwidth_graph_image, Softlayer::Base64Binary, message)
      end

      def get_private_ip_address
        request(:get_private_ip_address, String)
      end

      def get_private_network_component
        request(:get_private_network_component, Softlayer::Network::Component)
      end

      def get_private_network_only_flag
        request(:get_private_network_only_flag, Boolean)
      end

      def get_private_vlan
        request(:get_private_vlan, Softlayer::Network::Vlan)
      end

      # ip_address
      def self.get_private_vlan_by_ip_address(message)
        request(:get_private_vlan_by_ip_address, Softlayer::Network::Vlan, message)
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

      def get_projected_over_bandwidth_allocation_flag
        request(:get_projected_over_bandwidth_allocation_flag, Integer)
      end

      def get_projected_public_bandwidth_usage
        request(:get_projected_public_bandwidth_usage, Float)
      end

      def get_provision_date
        request(:get_provision_date, DateTime)
      end

      # start_time
      # end_time
      def get_public_bandwidth_data(message)
        request(:get_public_bandwidth_data, Array[Softlayer::Metric::Tracking::Object::Data], message)
      end

      def get_public_bandwidth_data_summary
        request(:get_public_bandwidth_data_summary, Softlayer::Container::Network::Bandwidth::Data::Summary)
      end

      # start_time
      # end_time
      def get_public_bandwidth_graph_image(message)
        request(:get_public_bandwidth_graph_image, Softlayer::Base64Binary, message)
      end

      # start_time
      # end_time
      def get_public_bandwidth_total(message)
        request(:get_public_bandwidth_total, BigDecimal, message)
      end

      def get_public_network_component
        request(:get_public_network_component, Softlayer::Network::Component)
      end

      def get_public_vlan
        request(:get_public_vlan, Softlayer::Network::Vlan)
      end

      # hostname
      def self.get_public_vlan_by_hostname(message)
        request(:get_public_vlan_by_hostname, Softlayer::Network::Vlan, message)
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

      def get_recent_remote_management_commands
        request(:get_recent_remote_management_commands, Array[Softlayer::Hardware::Component::RemoteManagement::Command::Request])
      end

      def get_regional_internet_registry
        request(:get_regional_internet_registry, Softlayer::Network::Regional::Internet::Registry)
      end

      def get_remote_management
        request(:get_remote_management, Softlayer::Hardware::Component::RemoteManagement)
      end

      def get_remote_management_accounts
        request(:get_remote_management_accounts, Array[Softlayer::Hardware::Component::RemoteManagement::User])
      end

      def get_remote_management_component
        request(:get_remote_management_component, Softlayer::Network::Component)
      end

      def get_remote_management_users
        request(:get_remote_management_users, Array[Softlayer::Hardware::Component::RemoteManagement::User])
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

      def get_reverse_domain_records
        request(:get_reverse_domain_records, Array[Softlayer::Dns::Domain])
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

      def get_server_details
        request(:get_server_details, Softlayer::Container::Hardware::Server::Details)
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

      def get_ssh_keys
        request(:get_ssh_keys, Array[Softlayer::Security::Ssh::Key])
      end

      def get_statistics_remote_management
        request(:get_statistics_remote_management, Softlayer::Hardware::Component::RemoteManagement)
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

      # visibility
      def get_valid_block_device_template_groups(message)
        request(:get_valid_block_device_template_groups, Array[Softlayer::Virtual::Guest::Block::Device::Template::Group], message)
      end

      def get_virtual_chassis
        request(:get_virtual_chassis, Softlayer::Hardware::Group)
      end

      def get_virtual_chassis_siblings
        request(:get_virtual_chassis_siblings, Array[Softlayer::Hardware])
      end

      def get_virtual_guests
        request(:get_virtual_guests, Array[Softlayer::Virtual::Guest])
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

      def get_windows_update_available_updates
        request(:get_windows_update_available_updates, Array[Softlayer::Container::Utility::Microsoft::Windows::UpdateServices::UpdateItem])
      end

      def get_windows_update_installed_updates
        request(:get_windows_update_installed_updates, Array[Softlayer::Container::Utility::Microsoft::Windows::UpdateServices::UpdateItem])
      end

      def get_windows_update_status
        request(:get_windows_update_status, Softlayer::Container::Utility::Microsoft::Windows::UpdateServices::Status)
      end

      def import_virtual_host
        request(:import_virtual_host, Softlayer::Virtual::Host)
      end

      def initiate_idera_bare_metal_restore
        request(:initiate_idera_bare_metal_restore, Boolean)
      end

      def initiate_r1_soft_bare_metal_restore
        request(:initiate_r1_soft_bare_metal_restore, Boolean)
      end

      def is_backend_pingable
        request(:is_backend_pingable, Boolean)
      end

      def is_pingable
        request(:is_pingable, Boolean)
      end

      def is_windows_server
        request(:is_windows_server, Boolean)
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

      # token
      def reload_current_operating_system_configuration(message)
        request(:reload_current_operating_system_configuration, String, message)
      end

      # token
      # config
      def reload_operating_system(message)
        request(:reload_operating_system, String, message)
      end

      # network_storage_template_object
      def remove_access_to_network_storage(message)
        request(:remove_access_to_network_storage, Boolean, message)
      end

      # network_storage_template_objects
      def remove_access_to_network_storage_list(message)
        request(:remove_access_to_network_storage_list, Boolean, message)
      end

      def run_passmark_certification_benchmark
        request(:run_passmark_certification_benchmark, Boolean)
      end

      # new_password
      def set_operating_system_password(message)
        request(:set_operating_system_password, Boolean, message)
      end

      # new_speed
      def set_private_network_interface_speed(message)
        request(:set_private_network_interface_speed, Boolean, message)
      end

      # new_speed
      def set_public_network_interface_speed(message)
        request(:set_public_network_interface_speed, Boolean, message)
      end

      # tags
      def set_tags(message)
        request(:set_tags, Boolean, message)
      end

      # metadata
      def set_user_metadata(message)
        request(:set_user_metadata, Array[Softlayer::Hardware::Attribute], message)
      end

      def shutdown_private_port
        request(:shutdown_private_port, Boolean)
      end

      def shutdown_public_port
        request(:shutdown_public_port, Boolean)
      end

      # action
      # new_order
      def spare_pool(message)
        request(:spare_pool, Boolean, message)
      end

      # operating_system
      # partitions
      def self.validate_partitions_for_operating_system(message)
        request(:validate_partitions_for_operating_system, Boolean, message)
      end

      class Representer < Softlayer::Hardware::Server::Representer
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
