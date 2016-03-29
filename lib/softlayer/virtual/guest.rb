module Softlayer
  module Virtual
    class Guest < Softlayer::Entity
      SERVICE = 'SoftLayer_Virtual_Guest'
      autoload :Attribute, 'softlayer/virtual/guest/attribute'
      autoload :Status, 'softlayer/virtual/guest/status'
      autoload :SupplementalCreateObjectOptions, 'softlayer/virtual/guest/supplemental_create_object_options'
      autoload :Block, 'softlayer/virtual/guest/block'
      autoload :Boot, 'softlayer/virtual/guest/boot'
      autoload :Network, 'softlayer/virtual/guest/network'
      autoload :Power, 'softlayer/virtual/guest/power'
      attr_accessor :account_id
      attr_accessor :create_date
      attr_accessor :dedicated_account_host_only_flag
      attr_accessor :domain
      attr_accessor :fully_qualified_domain_name
      attr_accessor :hostname
      attr_accessor :id
      attr_accessor :last_power_state_id
      attr_accessor :last_verified_date
      attr_accessor :max_cpu
      attr_accessor :max_cpu_units
      attr_accessor :max_memory
      attr_accessor :metric_poll_date
      attr_accessor :modify_date
      attr_accessor :notes
      attr_accessor :post_install_script_uri
      attr_accessor :provision_date
      attr_accessor :start_cpus
      attr_accessor :status_id
      attr_accessor :supplemental_create_object_options
      attr_accessor :uuid
      attr_accessor :active_network_monitor_incident_count
      attr_accessor :active_ticket_count
      attr_accessor :active_transaction_count
      attr_accessor :allowed_network_storage_count
      attr_accessor :allowed_network_storage_replica_count
      attr_accessor :attribute_count
      attr_accessor :available_monitoring_count
      attr_accessor :backend_network_component_count
      attr_accessor :backend_router_count
      attr_accessor :billing_cycle_bandwidth_usage_count
      attr_accessor :block_device_count
      attr_accessor :evault_network_storage_count
      attr_accessor :frontend_network_component_count
      attr_accessor :internal_tag_reference_count
      attr_accessor :monitoring_agent_count
      attr_accessor :monitoring_user_notification_count
      attr_accessor :network_component_count
      attr_accessor :network_monitor_count
      attr_accessor :network_monitor_incident_count
      attr_accessor :network_storage_count
      attr_accessor :network_vlan_count
      attr_accessor :recent_event_count
      attr_accessor :scale_asset_count
      attr_accessor :security_scan_request_count
      attr_accessor :software_component_count
      attr_accessor :ssh_key_count
      attr_accessor :tag_reference_count
      attr_accessor :user_count
      attr_accessor :user_data_count
      attr_accessor :account
      attr_accessor :account_owned_pool_flag
      attr_accessor :active_network_monitor_incident
      attr_accessor :active_tickets
      attr_accessor :active_transaction
      attr_accessor :active_transactions
      attr_accessor :allowed_host
      attr_accessor :allowed_network_storage
      attr_accessor :allowed_network_storage_replicas
      attr_accessor :antivirus_spyware_software_component
      attr_accessor :application_delivery_controller
      attr_accessor :attributes
      attr_accessor :available_monitoring
      attr_accessor :average_daily_private_bandwidth_usage
      attr_accessor :average_daily_public_bandwidth_usage
      attr_accessor :backend_network_components
      attr_accessor :backend_routers
      attr_accessor :bandwidth_allocation
      attr_accessor :bandwidth_allotment_detail
      attr_accessor :billing_cycle_bandwidth_usage
      attr_accessor :billing_cycle_private_bandwidth_usage
      attr_accessor :billing_cycle_public_bandwidth_usage
      attr_accessor :billing_item
      attr_accessor :block_cancel_because_disconnected_flag
      attr_accessor :block_device_template_group
      attr_accessor :block_devices
      attr_accessor :console_ip_address_flag
      attr_accessor :console_ip_address_record
      attr_accessor :continuous_data_protection_software_component
      attr_accessor :control_panel
      attr_accessor :current_bandwidth_summary
      attr_accessor :datacenter
      attr_accessor :evault_network_storage
      attr_accessor :firewall_service_component
      attr_accessor :frontend_network_components
      attr_accessor :frontend_routers
      attr_accessor :global_identifier
      attr_accessor :guest_boot_parameter
      attr_accessor :host
      attr_accessor :host_ips_software_component
      attr_accessor :hourly_billing_flag
      attr_accessor :inbound_private_bandwidth_usage
      attr_accessor :inbound_public_bandwidth_usage
      attr_accessor :internal_tag_references
      attr_accessor :last_known_power_state
      attr_accessor :last_operating_system_reload
      attr_accessor :last_transaction
      attr_accessor :latest_network_monitor_incident
      attr_accessor :local_disk_flag
      attr_accessor :location
      attr_accessor :managed_resource_flag
      attr_accessor :metric_tracking_object
      attr_accessor :metric_tracking_object_id
      attr_accessor :monitoring_agents
      attr_accessor :monitoring_robot
      attr_accessor :monitoring_service_component
      attr_accessor :monitoring_service_eligibility_flag
      attr_accessor :monitoring_service_flag
      attr_accessor :monitoring_user_notification
      attr_accessor :network_components
      attr_accessor :network_monitor_incidents
      attr_accessor :network_monitors
      attr_accessor :network_storage
      attr_accessor :network_vlans
      attr_accessor :open_cancellation_ticket
      attr_accessor :operating_system
      attr_accessor :operating_system_reference_code
      attr_accessor :ordered_package_id
      attr_accessor :outbound_private_bandwidth_usage
      attr_accessor :outbound_public_bandwidth_usage
      attr_accessor :over_bandwidth_allocation_flag
      attr_accessor :power_state
      attr_accessor :primary_backend_ip_address
      attr_accessor :primary_backend_network_component
      attr_accessor :primary_ip_address
      attr_accessor :primary_network_component
      attr_accessor :private_network_only_flag
      attr_accessor :projected_over_bandwidth_allocation_flag
      attr_accessor :projected_public_bandwidth_usage
      attr_accessor :recent_events
      attr_accessor :regional_group
      attr_accessor :regional_internet_registry
      attr_accessor :scale_assets
      attr_accessor :scale_member
      attr_accessor :scaled_flag
      attr_accessor :security_scan_requests
      attr_accessor :server_room
      attr_accessor :software_components
      attr_accessor :ssh_keys
      attr_accessor :status
      attr_accessor :tag_references
      attr_accessor :upgrade_request
      attr_accessor :user_data
      attr_accessor :users
      attr_accessor :virtual_rack
      attr_accessor :virtual_rack_id
      attr_accessor :virtual_rack_name

      def activate_private_port
        request(:activate_private_port, Boolean)
      end

      def activate_public_port
        request(:activate_public_port, Boolean)
      end

      def allow_access_to_network_storage(network_storage_template_object = nil)
        message = {network_storage_template_object: network_storage_template_object}
        request(:allow_access_to_network_storage, Boolean, message)
      end

      def allow_access_to_network_storage_list(network_storage_template_objects = nil)
        message = {network_storage_template_objects: network_storage_template_objects}
        request(:allow_access_to_network_storage_list, Boolean, message)
      end

      def attach_disk_image(image_id = nil)
        message = {image_id: image_id}
        request(:attach_disk_image, Softlayer::Provisioning::Version1::Transaction, message)
      end

      def cancel_isolation_for_destructive_action
        request(:cancel_isolation_for_destructive_action, nil)
      end

      def capture_image(capture_template = nil)
        message = {capture_template: capture_template}
        request(:capture_image, Softlayer::Virtual::Guest::Block::Device::Template::Group, message)
      end

      def check_host_disk_availability(disk_capacity = nil)
        message = {disk_capacity: disk_capacity}
        request(:check_host_disk_availability, Boolean, message)
      end

      def close_alarm(alarm_id = nil)
        message = {alarm_id: alarm_id}
        request(:close_alarm, Boolean, message)
      end

      def configure_metadata_disk
        request(:configure_metadata_disk, Softlayer::Provisioning::Version1::Transaction)
      end

      def create_archive_transaction(group_name = nil, block_devices = nil, note = nil)
        message = {group_name: group_name, block_devices: block_devices, note: note}
        request(:create_archive_transaction, Softlayer::Provisioning::Version1::Transaction, message)
      end

      def self.create_object(template_object = nil)
        message = {template_object: template_object}
        request(:create_object, Softlayer::Virtual::Guest, message)
      end

      def self.create_objects(template_objects = nil)
        message = {template_objects: template_objects}
        request(:create_objects, Array[Softlayer::Virtual::Guest], message)
      end

      def create_post_software_install_transaction(data = nil, return_boolean = nil)
        message = {data: data, return_boolean: return_boolean}
        request(:create_post_software_install_transaction, Boolean, message)
      end

      def delete_object
        request(:delete_object, Boolean)
      end

      def detach_disk_image(image_id = nil)
        message = {image_id: image_id}
        request(:detach_disk_image, Softlayer::Provisioning::Version1::Transaction, message)
      end

      def edit_object(template_object = nil)
        message = {template_object: template_object}
        request(:edit_object, Boolean, message)
      end

      def execute_idera_bare_metal_restore
        request(:execute_idera_bare_metal_restore, Boolean)
      end

      def execute_r1_soft_bare_metal_restore
        request(:execute_r1_soft_bare_metal_restore, Boolean)
      end

      def execute_rescue_layer
        request(:execute_rescue_layer, Boolean)
      end

      def self.find_by_ip_address(ip_address = nil)
        message = {ip_address: ip_address}
        request(:find_by_ip_address, Softlayer::Virtual::Guest, message)
      end

      def self.generate_order_template(template_object = nil)
        message = {template_object: template_object}
        request(:generate_order_template, Softlayer::Container::Product::Order, message)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def get_account_owned_pool_flag
        request(:get_account_owned_pool_flag, Boolean)
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

      def get_additional_required_prices_for_os_reload(config = nil)
        message = {config: config}
        request(:get_additional_required_prices_for_os_reload, Array[Softlayer::Product::Item::Price], message)
      end

      def get_alarm_history(start_date = nil, end_date = nil, alarm_id = nil)
        message = {start_date: start_date, end_date: end_date, alarm_id: alarm_id}
        request(:get_alarm_history, Array[Softlayer::Container::Monitoring::Alarm::History], message)
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

      def get_application_delivery_controller
        request(:get_application_delivery_controller, Softlayer::Network::Application::Delivery::Controller)
      end

      def get_attached_network_storages(nas_type = nil)
        message = {nas_type: nas_type}
        request(:get_attached_network_storages, Array[Softlayer::Network::Storage], message)
      end

      def get_attributes
        request(:get_attributes, Array[Softlayer::Virtual::Guest::Attribute])
      end

      def get_available_block_device_positions
        request(:get_available_block_device_positions, Array[String])
      end

      def get_available_monitoring
        request(:get_available_monitoring, Array[Softlayer::Network::Monitor::Version1::Query::Host::Stratum])
      end

      def get_available_network_storages(nas_type = nil)
        message = {nas_type: nas_type}
        request(:get_available_network_storages, Array[Softlayer::Network::Storage], message)
      end

      def get_average_daily_private_bandwidth_usage
        request(:get_average_daily_private_bandwidth_usage, Float)
      end

      def get_average_daily_public_bandwidth_usage
        request(:get_average_daily_public_bandwidth_usage, Float)
      end

      def get_backend_network_components
        request(:get_backend_network_components, Array[Softlayer::Virtual::Guest::Network::Component])
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

      def get_bandwidth_data_by_date(start_date_time = nil, end_date_time = nil, network_type = nil)
        message = {start_date_time: start_date_time, end_date_time: end_date_time, network_type: network_type}
        request(:get_bandwidth_data_by_date, Array[Softlayer::Metric::Tracking::Object::Data], message)
      end

      def get_bandwidth_for_date_range(start_date = nil, end_date = nil)
        message = {start_date: start_date, end_date: end_date}
        request(:get_bandwidth_for_date_range, Array[Softlayer::Metric::Tracking::Object::Data], message)
      end

      def get_bandwidth_image(network_type = nil, snapshot_range = nil, date_specified = nil)
        message = {network_type: network_type, snapshot_range: snapshot_range, date_specified: date_specified}
        request(:get_bandwidth_image, Softlayer::Container::Bandwidth::GraphOutputs, message)
      end

      def get_bandwidth_image_by_date(start_date_time = nil, end_date_time = nil, network_type = nil)
        message = {start_date_time: start_date_time, end_date_time: end_date_time, network_type: network_type}
        request(:get_bandwidth_image_by_date, Softlayer::Container::Bandwidth::GraphOutputs, message)
      end

      def get_bandwidth_total(start_date_time = nil, end_date_time = nil, direction = nil, side = nil)
        message = {start_date_time: start_date_time, end_date_time: end_date_time, direction: direction, side: side}
        request(:get_bandwidth_total, BigDecimal, message)
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
        request(:get_billing_item, Softlayer::Billing::Item::Virtual::Guest)
      end

      def get_block_cancel_because_disconnected_flag
        request(:get_block_cancel_because_disconnected_flag, Boolean)
      end

      def get_block_device_template_group
        request(:get_block_device_template_group, Softlayer::Virtual::Guest::Block::Device::Template::Group)
      end

      def get_block_devices
        request(:get_block_devices, Array[Softlayer::Virtual::Guest::Block::Device])
      end

      def get_boot_order
        request(:get_boot_order, String)
      end

      def get_console_access_log
        request(:get_console_access_log, Array[Softlayer::Network::Logging::Syslog])
      end

      def get_console_ip_address_flag
        request(:get_console_ip_address_flag, Boolean)
      end

      def get_console_ip_address_record
        request(:get_console_ip_address_record, Softlayer::Virtual::Guest::Network::Component::IpAddress)
      end

      def get_continuous_data_protection_software_component
        request(:get_continuous_data_protection_software_component, Softlayer::Software::Component)
      end

      def get_control_panel
        request(:get_control_panel, Softlayer::Software::Component)
      end

      def get_core_restricted_operating_system_price
        request(:get_core_restricted_operating_system_price, Softlayer::Product::Item::Price)
      end

      def get_cpu_metric_data_by_date(start_date_time = nil, end_date_time = nil, cpu_indexes = nil)
        message = {start_date_time: start_date_time, end_date_time: end_date_time, cpu_indexes: cpu_indexes}
        request(:get_cpu_metric_data_by_date, Array[Softlayer::Metric::Tracking::Object::Data], message)
      end

      def get_cpu_metric_image(snapshot_range = nil, date_specified = nil)
        message = {snapshot_range: snapshot_range, date_specified: date_specified}
        request(:get_cpu_metric_image, Softlayer::Container::Bandwidth::GraphOutputs, message)
      end

      def get_cpu_metric_image_by_date(start_date_time = nil, end_date_time = nil, cpu_indexes = nil)
        message = {start_date_time: start_date_time, end_date_time: end_date_time, cpu_indexes: cpu_indexes}
        request(:get_cpu_metric_image_by_date, Softlayer::Container::Bandwidth::GraphOutputs, message)
      end

      def self.get_create_object_options
        request(:get_create_object_options, Softlayer::Container::Virtual::Guest::Configuration)
      end

      def get_current_bandwidth_summary
        request(:get_current_bandwidth_summary, Softlayer::Metric::Tracking::Object::Bandwidth::Summary)
      end

      def get_current_billing_detail
        request(:get_current_billing_detail, Array[Softlayer::Billing::Item])
      end

      def get_current_billing_total
        request(:get_current_billing_total, Float)
      end

      def get_custom_bandwidth_data_by_date(graph_data = nil)
        message = {graph_data: graph_data}
        request(:get_custom_bandwidth_data_by_date, Softlayer::Container::Graph, message)
      end

      def get_custom_metric_data_by_date(graph_data = nil)
        message = {graph_data: graph_data}
        request(:get_custom_metric_data_by_date, Softlayer::Container::Graph, message)
      end

      def get_datacenter
        request(:get_datacenter, Softlayer::Location)
      end

      def get_drive_retention_item_price
        request(:get_drive_retention_item_price, Softlayer::Product::Item::Price)
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

      def get_first_available_block_device_position
        request(:get_first_available_block_device_position, String)
      end

      def get_frontend_network_components
        request(:get_frontend_network_components, Array[Softlayer::Virtual::Guest::Network::Component])
      end

      def get_frontend_routers
        request(:get_frontend_routers, Softlayer::Hardware)
      end

      def get_global_identifier
        request(:get_global_identifier, String)
      end

      def get_guest_boot_parameter
        request(:get_guest_boot_parameter, Softlayer::Virtual::Guest::Boot::Parameter)
      end

      def get_host
        request(:get_host, Softlayer::Virtual::Host)
      end

      def get_host_ips_software_component
        request(:get_host_ips_software_component, Softlayer::Software::Component)
      end

      def get_hourly_billing_flag
        request(:get_hourly_billing_flag, Boolean)
      end

      def get_inbound_private_bandwidth_usage
        request(:get_inbound_private_bandwidth_usage, Float)
      end

      def get_inbound_public_bandwidth_usage
        request(:get_inbound_public_bandwidth_usage, Float)
      end

      def get_internal_tag_references
        request(:get_internal_tag_references, Array[Softlayer::Tag::Reference])
      end

      def get_iso_boot_image
        request(:get_iso_boot_image, Softlayer::Virtual::Disk::Image)
      end

      def get_item_prices_from_software_descriptions(software_descriptions = nil, include_translations_flag = nil, return_all_prices_flag = nil)
        message = {software_descriptions: software_descriptions, include_translations_flag: include_translations_flag, return_all_prices_flag: return_all_prices_flag}
        request(:get_item_prices_from_software_descriptions, Array[Softlayer::Product::Item], message)
      end

      def get_last_known_power_state
        request(:get_last_known_power_state, Softlayer::Virtual::Guest::Power::State)
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

      def get_local_disk_flag
        request(:get_local_disk_flag, Boolean)
      end

      def get_location
        request(:get_location, Softlayer::Location)
      end

      def get_managed_resource_flag
        request(:get_managed_resource_flag, Boolean)
      end

      def get_memory_metric_data_by_date(start_date_time = nil, end_date_time = nil)
        message = {start_date_time: start_date_time, end_date_time: end_date_time}
        request(:get_memory_metric_data_by_date, Array[Softlayer::Metric::Tracking::Object::Data], message)
      end

      def get_memory_metric_image(snapshot_range = nil, date_specified = nil)
        message = {snapshot_range: snapshot_range, date_specified: date_specified}
        request(:get_memory_metric_image, Softlayer::Container::Bandwidth::GraphOutputs, message)
      end

      def get_memory_metric_image_by_date(start_date_time = nil, end_date_time = nil)
        message = {start_date_time: start_date_time, end_date_time: end_date_time}
        request(:get_memory_metric_image_by_date, Softlayer::Container::Bandwidth::GraphOutputs, message)
      end

      def get_metric_tracking_object
        request(:get_metric_tracking_object, Softlayer::Metric::Tracking::Object)
      end

      def get_metric_tracking_object_id
        request(:get_metric_tracking_object_id, Integer)
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

      def get_monitoring_user_notification
        request(:get_monitoring_user_notification, Array[Softlayer::User::Customer::Notification::Virtual::Guest])
      end

      def get_network_component_firewall_protectable_ip_addresses
        request(:get_network_component_firewall_protectable_ip_addresses, Array[Softlayer::Network::Subnet::IpAddress])
      end

      def get_network_components
        request(:get_network_components, Array[Softlayer::Virtual::Guest::Network::Component])
      end

      def get_network_monitor_incidents
        request(:get_network_monitor_incidents, Array[Softlayer::Network::Monitor::Version1::Incident])
      end

      def get_network_monitors
        request(:get_network_monitors, Array[Softlayer::Network::Monitor::Version1::Query::Host])
      end

      def get_network_storage
        request(:get_network_storage, Array[Softlayer::Network::Storage])
      end

      def get_network_vlans
        request(:get_network_vlans, Array[Softlayer::Network::Vlan])
      end

      def get_object
        request(:get_object, Softlayer::Virtual::Guest)
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

      def get_order_template(billing_type = nil, order_prices = nil)
        message = {billing_type: billing_type, order_prices: order_prices}
        request(:get_order_template, Softlayer::Container::Product::Order, message)
      end

      def get_ordered_package_id
        request(:get_ordered_package_id, String)
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

      def get_power_state
        request(:get_power_state, Softlayer::Virtual::Guest::Power::State)
      end

      def get_primary_backend_ip_address
        request(:get_primary_backend_ip_address, String)
      end

      def get_primary_backend_network_component
        request(:get_primary_backend_network_component, Softlayer::Virtual::Guest::Network::Component)
      end

      def get_primary_ip_address
        request(:get_primary_ip_address, String)
      end

      def get_primary_network_component
        request(:get_primary_network_component, Softlayer::Virtual::Guest::Network::Component)
      end

      def get_private_network_only_flag
        request(:get_private_network_only_flag, Boolean)
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

      def get_recent_events
        request(:get_recent_events, Array[Softlayer::Notification::Occurrence::Event])
      end

      def get_recent_metric_data(time = nil)
        message = {time: time}
        request(:get_recent_metric_data, Array[Softlayer::Metric::Tracking::Object], message)
      end

      def get_regional_group
        request(:get_regional_group, Softlayer::Location::Group::Regional)
      end

      def get_regional_internet_registry
        request(:get_regional_internet_registry, Softlayer::Network::Regional::Internet::Registry)
      end

      def get_remote_monitoring_active_alarms(start_date = nil, end_date = nil)
        message = {start_date: start_date, end_date: end_date}
        request(:get_remote_monitoring_active_alarms, Array[Softlayer::Container::Monitoring::Alarm::History], message)
      end

      def get_remote_monitoring_closed_alarms(start_date = nil, end_date = nil)
        message = {start_date: start_date, end_date: end_date}
        request(:get_remote_monitoring_closed_alarms, Array[Softlayer::Container::Monitoring::Alarm::History], message)
      end

      def get_reverse_domain_records
        request(:get_reverse_domain_records, Array[Softlayer::Dns::Domain])
      end

      def get_scale_assets
        request(:get_scale_assets, Array[Softlayer::Scale::Asset])
      end

      def get_scale_member
        request(:get_scale_member, Softlayer::Scale::Member::Virtual::Guest)
      end

      def get_scaled_flag
        request(:get_scaled_flag, Boolean)
      end

      def get_security_scan_requests
        request(:get_security_scan_requests, Array[Softlayer::Network::Security::Scanner::Request])
      end

      def get_server_room
        request(:get_server_room, Softlayer::Location)
      end

      def get_software_components
        request(:get_software_components, Array[Softlayer::Software::Component])
      end

      def get_ssh_keys
        request(:get_ssh_keys, Array[Softlayer::Security::Ssh::Key])
      end

      def get_status
        request(:get_status, Softlayer::Virtual::Guest::Status)
      end

      def get_tag_references
        request(:get_tag_references, Array[Softlayer::Tag::Reference])
      end

      def get_upgrade_item_prices(include_downgrade_item_prices = nil)
        message = {include_downgrade_item_prices: include_downgrade_item_prices}
        request(:get_upgrade_item_prices, Array[Softlayer::Product::Item::Price], message)
      end

      def get_upgrade_request
        request(:get_upgrade_request, Softlayer::Product::Upgrade::Request)
      end

      def get_user_data
        request(:get_user_data, Array[Softlayer::Virtual::Guest::Attribute])
      end

      def get_users
        request(:get_users, Array[Softlayer::User::Customer])
      end

      def get_valid_block_device_template_groups(visibility = nil)
        message = {visibility: visibility}
        request(:get_valid_block_device_template_groups, Array[Softlayer::Virtual::Guest::Block::Device::Template::Group], message)
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

      def is_backend_pingable
        request(:is_backend_pingable, Boolean)
      end

      def is_pingable
        request(:is_pingable, Boolean)
      end

      def isolate_instance_for_destructive_action
        request(:isolate_instance_for_destructive_action, nil)
      end

      def mount_iso_image(disk_image_id = nil)
        message = {disk_image_id: disk_image_id}
        request(:mount_iso_image, Softlayer::Provisioning::Version1::Transaction, message)
      end

      def pause
        request(:pause, Boolean)
      end

      def power_cycle
        request(:power_cycle, Boolean)
      end

      def power_off
        request(:power_off, Boolean)
      end

      def power_off_soft
        request(:power_off_soft, Boolean)
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

      def reload_current_operating_system_configuration
        request(:reload_current_operating_system_configuration, Softlayer::Provisioning::Version1::Transaction)
      end

      def reload_operating_system(token = nil, config = nil)
        message = {token: token, config: config}
        request(:reload_operating_system, String, message)
      end

      def remove_access_to_network_storage(network_storage_template_object = nil)
        message = {network_storage_template_object: network_storage_template_object}
        request(:remove_access_to_network_storage, Boolean, message)
      end

      def remove_access_to_network_storage_list(network_storage_template_objects = nil)
        message = {network_storage_template_objects: network_storage_template_objects}
        request(:remove_access_to_network_storage_list, Boolean, message)
      end

      def resume
        request(:resume, Boolean)
      end

      def set_private_network_interface_speed(new_speed = nil)
        message = {new_speed: new_speed}
        request(:set_private_network_interface_speed, Boolean, message)
      end

      def set_public_network_interface_speed(new_speed = nil)
        message = {new_speed: new_speed}
        request(:set_public_network_interface_speed, Boolean, message)
      end

      def set_tags(tags = nil)
        message = {tags: tags}
        request(:set_tags, Boolean, message)
      end

      def set_user_metadata(metadata = nil)
        message = {metadata: metadata}
        request(:set_user_metadata, Boolean, message)
      end

      def shutdown_private_port
        request(:shutdown_private_port, Boolean)
      end

      def shutdown_public_port
        request(:shutdown_public_port, Boolean)
      end

      def unmount_iso_image
        request(:unmount_iso_image, Softlayer::Provisioning::Version1::Transaction)
      end

      def validate_image_template(image_template_id = nil)
        message = {image_template_id: image_template_id}
        request(:validate_image_template, Boolean, message)
      end

      def verify_reload_operating_system(config = nil)
        message = {config: config}
        request(:verify_reload_operating_system, Boolean, message)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :create_date, type: DateTime
        property :dedicated_account_host_only_flag, type: Boolean
        property :domain, type: String
        property :fully_qualified_domain_name, type: String
        property :hostname, type: String
        property :id, type: Integer
        property :last_power_state_id, type: Integer
        property :last_verified_date, type: DateTime
        property :max_cpu, type: Integer
        property :max_cpu_units, type: String
        property :max_memory, type: Integer
        property :metric_poll_date, type: DateTime
        property :modify_date, type: DateTime
        property :notes, type: String
        property :post_install_script_uri, type: String
        property :provision_date, type: DateTime
        property :start_cpus, type: Integer
        property :status_id, type: Integer
        property :uuid, type: String
        property :active_network_monitor_incident_count, type: BigDecimal
        property :active_ticket_count, type: BigDecimal
        property :active_transaction_count, type: BigDecimal
        property :allowed_network_storage_count, type: BigDecimal
        property :allowed_network_storage_replica_count, type: BigDecimal
        property :attribute_count, type: BigDecimal
        property :available_monitoring_count, type: BigDecimal
        property :backend_network_component_count, type: BigDecimal
        property :backend_router_count, type: BigDecimal
        property :billing_cycle_bandwidth_usage_count, type: BigDecimal
        property :block_device_count, type: BigDecimal
        property :evault_network_storage_count, type: BigDecimal
        property :frontend_network_component_count, type: BigDecimal
        property :internal_tag_reference_count, type: BigDecimal
        property :monitoring_agent_count, type: BigDecimal
        property :monitoring_user_notification_count, type: BigDecimal
        property :network_component_count, type: BigDecimal
        property :network_monitor_count, type: BigDecimal
        property :network_monitor_incident_count, type: BigDecimal
        property :network_storage_count, type: BigDecimal
        property :network_vlan_count, type: BigDecimal
        property :recent_event_count, type: BigDecimal
        property :scale_asset_count, type: BigDecimal
        property :security_scan_request_count, type: BigDecimal
        property :software_component_count, type: BigDecimal
        property :ssh_key_count, type: BigDecimal
        property :tag_reference_count, type: BigDecimal
        property :user_count, type: BigDecimal
        property :user_data_count, type: BigDecimal
        property :account_owned_pool_flag, type: Boolean
        property :average_daily_private_bandwidth_usage, type: Float
        property :average_daily_public_bandwidth_usage, type: Float
        property :bandwidth_allocation, type: Float
        property :block_cancel_because_disconnected_flag, type: Boolean
        property :console_ip_address_flag, type: Boolean
        property :global_identifier, type: String
        property :hourly_billing_flag, type: Boolean
        property :inbound_private_bandwidth_usage, type: Float
        property :inbound_public_bandwidth_usage, type: Float
        property :local_disk_flag, type: Boolean
        property :managed_resource_flag, type: Boolean
        property :metric_tracking_object_id, type: Integer
        property :monitoring_service_eligibility_flag, type: Boolean
        property :monitoring_service_flag, type: Boolean
        property :operating_system_reference_code, type: String
        property :ordered_package_id, type: String
        property :outbound_private_bandwidth_usage, type: Float
        property :outbound_public_bandwidth_usage, type: Float
        property :over_bandwidth_allocation_flag, type: Integer
        property :primary_backend_ip_address, type: String
        property :primary_ip_address, type: String
        property :private_network_only_flag, type: Boolean
        property :projected_over_bandwidth_allocation_flag, type: Integer
        property :projected_public_bandwidth_usage, type: Float
        property :scaled_flag, type: Boolean
        property :virtual_rack_id, type: Integer
        property :virtual_rack_name, type: String
      end
    end
  end
end
