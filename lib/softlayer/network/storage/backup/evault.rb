module Softlayer
  class Network
    class Storage
      class Backup
        class Evault < Softlayer::Network::Storage::Backup
          SERVICE = 'SoftLayer_Network_Storage_Backup_Evault'
          autoload :Version6, 'softlayer/network/storage/backup/evault/version6'

          def allow_access_from_hardware(hardware_object_template = nil)
            message = {hardware_object_template: hardware_object_template}
            request(:allow_access_from_hardware, Boolean, message)
          end

          def allow_access_from_hardware_list(hardware_object_templates = nil)
            message = {hardware_object_templates: hardware_object_templates}
            request(:allow_access_from_hardware_list, Boolean, message)
          end

          def allow_access_from_host(type_class_name = nil, host_id = nil)
            message = {type_class_name: type_class_name, host_id: host_id}
            request(:allow_access_from_host, Softlayer::Network::Storage::Allowed::Host, message)
          end

          def allow_access_from_host_list(host_object_templates = nil)
            message = {host_object_templates: host_object_templates}
            request(:allow_access_from_host_list, Array[Softlayer::Network::Storage::Allowed::Host], message)
          end

          def allow_access_from_ip_address(ip_address_object_template = nil)
            message = {ip_address_object_template: ip_address_object_template}
            request(:allow_access_from_ip_address, Boolean, message)
          end

          def allow_access_from_ip_address_list(ip_address_object_templates = nil)
            message = {ip_address_object_templates: ip_address_object_templates}
            request(:allow_access_from_ip_address_list, Boolean, message)
          end

          def allow_access_from_subnet(subnet_object_template = nil)
            message = {subnet_object_template: subnet_object_template}
            request(:allow_access_from_subnet, Boolean, message)
          end

          def allow_access_from_subnet_list(subnet_object_templates = nil)
            message = {subnet_object_templates: subnet_object_templates}
            request(:allow_access_from_subnet_list, Boolean, message)
          end

          def allow_access_from_virtual_guest(virtual_guest_object_template = nil)
            message = {virtual_guest_object_template: virtual_guest_object_template}
            request(:allow_access_from_virtual_guest, Boolean, message)
          end

          def allow_access_from_virtual_guest_list(virtual_guest_object_templates = nil)
            message = {virtual_guest_object_templates: virtual_guest_object_templates}
            request(:allow_access_from_virtual_guest_list, Boolean, message)
          end

          def allow_access_to_replicant_from_hardware(hardware_object_template = nil)
            message = {hardware_object_template: hardware_object_template}
            request(:allow_access_to_replicant_from_hardware, Boolean, message)
          end

          def allow_access_to_replicant_from_hardware_list(hardware_object_templates = nil)
            message = {hardware_object_templates: hardware_object_templates}
            request(:allow_access_to_replicant_from_hardware_list, Boolean, message)
          end

          def allow_access_to_replicant_from_ip_address(ip_address_object_template = nil)
            message = {ip_address_object_template: ip_address_object_template}
            request(:allow_access_to_replicant_from_ip_address, Boolean, message)
          end

          def allow_access_to_replicant_from_ip_address_list(ip_address_object_templates = nil)
            message = {ip_address_object_templates: ip_address_object_templates}
            request(:allow_access_to_replicant_from_ip_address_list, Boolean, message)
          end

          def allow_access_to_replicant_from_subnet(subnet_object_template = nil)
            message = {subnet_object_template: subnet_object_template}
            request(:allow_access_to_replicant_from_subnet, Boolean, message)
          end

          def allow_access_to_replicant_from_subnet_list(subnet_object_templates = nil)
            message = {subnet_object_templates: subnet_object_templates}
            request(:allow_access_to_replicant_from_subnet_list, Boolean, message)
          end

          def allow_access_to_replicant_from_virtual_guest(virtual_guest_object_template = nil)
            message = {virtual_guest_object_template: virtual_guest_object_template}
            request(:allow_access_to_replicant_from_virtual_guest, Boolean, message)
          end

          def allow_access_to_replicant_from_virtual_guest_list(virtual_guest_object_templates = nil)
            message = {virtual_guest_object_templates: virtual_guest_object_templates}
            request(:allow_access_to_replicant_from_virtual_guest_list, Boolean, message)
          end

          def assign_credential(username = nil)
            message = {username: username}
            request(:assign_credential, Boolean, message)
          end

          def assign_new_credential(type = nil)
            message = {type: type}
            request(:assign_new_credential, Softlayer::Network::Storage::Credential, message)
          end

          def self.change_password(username = nil, current_password = nil, new_password = nil)
            message = {username: username, current_password: current_password, new_password: new_password}
            request(:change_password, Boolean, message)
          end

          def collect_bandwidth(type = nil, start_date = nil, end_date = nil)
            message = {type: type, start_date: start_date, end_date: end_date}
            request(:collect_bandwidth, BigDecimal, message)
          end

          def collect_bytes_used
            request(:collect_bytes_used, BigDecimal)
          end

          def create_folder(folder = nil)
            message = {folder: folder}
            request(:create_folder, Boolean, message)
          end

          def create_snapshot(notes = nil)
            message = {notes: notes}
            request(:create_snapshot, Softlayer::Network::Storage::Backup::Evault, message)
          end

          def delete_all_files
            request(:delete_all_files, Boolean)
          end

          def delete_file(file_id = nil)
            message = {file_id: file_id}
            request(:delete_file, Boolean, message)
          end

          def delete_files(file_ids = nil)
            message = {file_ids: file_ids}
            request(:delete_files, Boolean, message)
          end

          def delete_folder(folder = nil)
            message = {folder: folder}
            request(:delete_folder, Boolean, message)
          end

          def delete_object
            request(:delete_object, Boolean)
          end

          def delete_tasks(tasks = nil)
            message = {tasks: tasks}
            request(:delete_tasks, Boolean, message)
          end

          def disable_snapshots(schedule_type = nil)
            message = {schedule_type: schedule_type}
            request(:disable_snapshots, Boolean, message)
          end

          def download_file(file_id = nil)
            message = {file_id: file_id}
            request(:download_file, Softlayer::Container::Utility::File::Entity, message)
          end

          def edit_credential(username = nil, new_password = nil)
            message = {username: username, new_password: new_password}
            request(:edit_credential, Boolean, message)
          end

          def edit_object(template_object = nil)
            message = {template_object: template_object}
            request(:edit_object, Boolean, message)
          end

          def enable_snapshots(schedule_type = nil, retention_count = nil, minute = nil, hour = nil, day_of_week = nil)
            message = {schedule_type: schedule_type, retention_count: retention_count, minute: minute, hour: hour, day_of_week: day_of_week}
            request(:enable_snapshots, Boolean, message)
          end

          def failback_from_replicant
            request(:failback_from_replicant, Boolean)
          end

          def failover_to_replicant(replicant_id = nil)
            message = {replicant_id: replicant_id}
            request(:failover_to_replicant, Boolean, message)
          end

          def get_account
            request(:get_account, Softlayer::Account)
          end

          def get_account_password
            request(:get_account_password, Softlayer::Account::Password)
          end

          def get_active_transactions
            request(:get_active_transactions, Array[Softlayer::Provisioning::Version1::Transaction])
          end

          def get_all_files
            request(:get_all_files, Array[Softlayer::Container::Utility::File::Entity])
          end

          def get_all_files_by_filter(filter = nil)
            message = {filter: filter}
            request(:get_all_files_by_filter, Array[Softlayer::Container::Utility::File::Entity], message)
          end

          def get_allowable_hardware(filter_hostname = nil)
            message = {filter_hostname: filter_hostname}
            request(:get_allowable_hardware, Array[Softlayer::Hardware], message)
          end

          def get_allowable_ip_addresses(subnet_id = nil, filter_ip_address = nil)
            message = {subnet_id: subnet_id, filter_ip_address: filter_ip_address}
            request(:get_allowable_ip_addresses, Array[Softlayer::Network::Subnet::IpAddress], message)
          end

          def get_allowable_subnets(filter_network_identifier = nil)
            message = {filter_network_identifier: filter_network_identifier}
            request(:get_allowable_subnets, Array[Softlayer::Network::Subnet], message)
          end

          def get_allowable_virtual_guests(filter_hostname = nil)
            message = {filter_hostname: filter_hostname}
            request(:get_allowable_virtual_guests, Array[Softlayer::Virtual::Guest], message)
          end

          def get_allowed_hardware
            request(:get_allowed_hardware, Array[Softlayer::Hardware])
          end

          def get_allowed_hosts_limit
            request(:get_allowed_hosts_limit, Integer)
          end

          def get_allowed_ip_addresses
            request(:get_allowed_ip_addresses, Array[Softlayer::Network::Subnet::IpAddress])
          end

          def get_allowed_replication_hardware
            request(:get_allowed_replication_hardware, Array[Softlayer::Hardware])
          end

          def get_allowed_replication_ip_addresses
            request(:get_allowed_replication_ip_addresses, Array[Softlayer::Network::Subnet::IpAddress])
          end

          def get_allowed_replication_subnets
            request(:get_allowed_replication_subnets, Array[Softlayer::Network::Subnet])
          end

          def get_allowed_replication_virtual_guests
            request(:get_allowed_replication_virtual_guests, Array[Softlayer::Virtual::Guest])
          end

          def get_allowed_subnets
            request(:get_allowed_subnets, Array[Softlayer::Network::Subnet])
          end

          def get_allowed_virtual_guests
            request(:get_allowed_virtual_guests, Array[Softlayer::Virtual::Guest])
          end

          def get_billing_item
            request(:get_billing_item, Softlayer::Billing::Item)
          end

          def get_billing_item_category
            request(:get_billing_item_category, Softlayer::Product::Item::Category)
          end

          def self.get_by_username(username = nil, type = nil)
            message = {username: username, type: type}
            request(:get_by_username, Array[Softlayer::Network::Storage], message)
          end

          def get_bytes_used
            request(:get_bytes_used, String)
          end

          def get_cdn_urls
            request(:get_cdn_urls, Array[Softlayer::Container::Network::Storage::Hub::ObjectStorage::ContentDeliveryUrl])
          end

          def get_cluster_resource
            request(:get_cluster_resource, Softlayer::Network::Service::Resource)
          end

          def get_creation_schedule_id
            request(:get_creation_schedule_id, String)
          end

          def get_credentials
            request(:get_credentials, Array[Softlayer::Network::Storage::Credential])
          end

          def get_current_cycle_peak_usage
            request(:get_current_cycle_peak_usage, Integer)
          end

          def get_daily_schedule
            request(:get_daily_schedule, Softlayer::Network::Storage::Schedule)
          end

          def get_events
            request(:get_events, Array[Softlayer::Network::Storage::Event])
          end

          def get_file_by_identifier(identifier = nil)
            message = {identifier: identifier}
            request(:get_file_by_identifier, Softlayer::Container::Utility::File::Entity, message)
          end

          def get_file_count
            request(:get_file_count, Integer)
          end

          def get_file_list(folder = nil, path = nil)
            message = {folder: folder, path: path}
            request(:get_file_list, Array[Softlayer::Container::Utility::File::Entity], message)
          end

          def get_file_pending_delete_count
            request(:get_file_pending_delete_count, Integer)
          end

          def get_files_pending_delete
            request(:get_files_pending_delete, Array[Softlayer::Container::Utility::File::Entity])
          end

          def get_folder_list
            request(:get_folder_list, Array[Softlayer::Container::Network::Storage::Hub::ObjectStorage::Folder])
          end

          def get_graph(start_date = nil, end_date = nil, type = nil)
            message = {start_date: start_date, end_date: end_date, type: type}
            request(:get_graph, Softlayer::Container::Bandwidth::GraphOutputs, message)
          end

          def get_hardware
            request(:get_hardware, Softlayer::Hardware)
          end

          def self.get_hardware_with_evault_first(option = nil, exact_match = nil, criteria = nil, mode = nil)
            message = {option: option, exact_match: exact_match, criteria: criteria, mode: mode}
            request(:get_hardware_with_evault_first, Array[Softlayer::Hardware], message)
          end

          def get_hourly_schedule
            request(:get_hourly_schedule, Softlayer::Network::Storage::Schedule)
          end

          def get_iops
            request(:get_iops, String)
          end

          def get_iscsi_luns
            request(:get_iscsi_luns, Array[Softlayer::Network::Storage])
          end

          def get_lun_id
            request(:get_lun_id, String)
          end

          def get_metric_tracking_object
            request(:get_metric_tracking_object, Softlayer::Metric::Tracking::Object)
          end

          def get_mountable_flag
            request(:get_mountable_flag, String)
          end

          def get_network_connection_details
            request(:get_network_connection_details, Softlayer::Container::Network::Storage::NetworkConnectionInformation)
          end

          def get_notification_subscribers
            request(:get_notification_subscribers, Array[Softlayer::Notification::User::Subscriber])
          end

          def get_object
            request(:get_object, Softlayer::Network::Storage::Backup::Evault)
          end

          def self.get_objects_by_credential(credential_object = nil)
            message = {credential_object: credential_object}
            request(:get_objects_by_credential, Array[Softlayer::Network::Storage], message)
          end

          def get_os_type
            request(:get_os_type, Softlayer::Network::Storage::Iscsi::Os::Type)
          end

          def get_os_type_id
            request(:get_os_type_id, String)
          end

          def get_parent_partnerships
            request(:get_parent_partnerships, Array[Softlayer::Network::Storage::Partnership])
          end

          def get_parent_volume
            request(:get_parent_volume, Softlayer::Network::Storage)
          end

          def get_partnerships
            request(:get_partnerships, Array[Softlayer::Network::Storage::Partnership])
          end

          def get_permissions_groups
            request(:get_permissions_groups, Array[Softlayer::Network::Storage::Group])
          end

          def get_previous_cycle_peak_usage
            request(:get_previous_cycle_peak_usage, Integer)
          end

          def get_properties
            request(:get_properties, Array[Softlayer::Network::Storage::Property])
          end

          def get_recycle_bin_file_by_identifier(file_id = nil)
            message = {file_id: file_id}
            request(:get_recycle_bin_file_by_identifier, Softlayer::Container::Utility::File::Entity, message)
          end

          def get_remaining_allowed_hosts
            request(:get_remaining_allowed_hosts, Integer)
          end

          def get_replicating_luns
            request(:get_replicating_luns, Array[Softlayer::Network::Storage])
          end

          def get_replicating_volume
            request(:get_replicating_volume, Softlayer::Network::Storage)
          end

          def get_replication_events
            request(:get_replication_events, Array[Softlayer::Network::Storage::Event])
          end

          def get_replication_partners
            request(:get_replication_partners, Array[Softlayer::Network::Storage])
          end

          def get_replication_schedule
            request(:get_replication_schedule, Softlayer::Network::Storage::Schedule)
          end

          def get_replication_status
            request(:get_replication_status, String)
          end

          def get_schedules
            request(:get_schedules, Array[Softlayer::Network::Storage::Schedule])
          end

          def get_service_resource
            request(:get_service_resource, Softlayer::Network::Service::Resource)
          end

          def get_service_resource_backend_ip_address
            request(:get_service_resource_backend_ip_address, String)
          end

          def get_service_resource_name
            request(:get_service_resource_name, String)
          end

          def get_snapshot_capacity_gb
            request(:get_snapshot_capacity_gb, String)
          end

          def get_snapshot_creation_timestamp
            request(:get_snapshot_creation_timestamp, String)
          end

          def get_snapshot_deletion_threshold_percentage
            request(:get_snapshot_deletion_threshold_percentage, String)
          end

          def get_snapshot_size_bytes
            request(:get_snapshot_size_bytes, String)
          end

          def get_snapshot_space_available
            request(:get_snapshot_space_available, String)
          end

          def get_snapshots
            request(:get_snapshots, Array[Softlayer::Network::Storage])
          end

          def get_snapshots_for_volume
            request(:get_snapshots_for_volume, Array[Softlayer::Network::Storage])
          end

          def get_storage_groups
            request(:get_storage_groups, Array[Softlayer::Network::Storage::Group])
          end

          def get_storage_groups_network_connection_details
            request(:get_storage_groups_network_connection_details, Array[Softlayer::Container::Network::Storage::NetworkConnectionInformation])
          end

          def get_storage_tier_level
            request(:get_storage_tier_level, String)
          end

          def get_storage_type
            request(:get_storage_type, Softlayer::Network::Storage::Type)
          end

          def get_total_bytes_used
            request(:get_total_bytes_used, String)
          end

          def get_total_schedule_snapshot_retention_count
            request(:get_total_schedule_snapshot_retention_count, Integer)
          end

          def get_usage_notification
            request(:get_usage_notification, Softlayer::Notification)
          end

          def get_valid_replication_target_datacenter_locations
            request(:get_valid_replication_target_datacenter_locations, Array[Softlayer::Location])
          end

          def get_vendor_name
            request(:get_vendor_name, String)
          end

          def get_virtual_guest
            request(:get_virtual_guest, Softlayer::Virtual::Guest)
          end

          def get_volume_history
            request(:get_volume_history, Array[Softlayer::Network::Storage::History])
          end

          def get_volume_status
            request(:get_volume_status, String)
          end

          def self.get_web_cc_authentication_details
            request(:get_web_cc_authentication_details, nil)
          end

          def get_webcc_account
            request(:get_webcc_account, Softlayer::Account::Password)
          end

          def get_weekly_schedule
            request(:get_weekly_schedule, Softlayer::Network::Storage::Schedule)
          end

          def immediate_failover_to_replicant(replicant_id = nil)
            message = {replicant_id: replicant_id}
            request(:immediate_failover_to_replicant, Boolean, message)
          end

          def initiate_bare_metal_restore
            request(:initiate_bare_metal_restore, Boolean)
          end

          def initiate_bare_metal_restore_for_server(hardware_id = nil)
            message = {hardware_id: hardware_id}
            request(:initiate_bare_metal_restore_for_server, Boolean, message)
          end

          def is_blocking_operation_in_progress(exempt_status_key_names = nil)
            message = {exempt_status_key_names: exempt_status_key_names}
            request(:is_blocking_operation_in_progress, Boolean, message)
          end

          def remove_access_from_hardware(hardware_object_template = nil)
            message = {hardware_object_template: hardware_object_template}
            request(:remove_access_from_hardware, Boolean, message)
          end

          def remove_access_from_hardware_list(hardware_object_templates = nil)
            message = {hardware_object_templates: hardware_object_templates}
            request(:remove_access_from_hardware_list, Boolean, message)
          end

          def remove_access_from_host(type_class_name = nil, host_id = nil)
            message = {type_class_name: type_class_name, host_id: host_id}
            request(:remove_access_from_host, Softlayer::Network::Storage::Allowed::Host, message)
          end

          def remove_access_from_host_list(host_object_templates = nil)
            message = {host_object_templates: host_object_templates}
            request(:remove_access_from_host_list, Array[Softlayer::Network::Storage::Allowed::Host], message)
          end

          def remove_access_from_ip_address(ip_address_object_template = nil)
            message = {ip_address_object_template: ip_address_object_template}
            request(:remove_access_from_ip_address, Boolean, message)
          end

          def remove_access_from_ip_address_list(ip_address_object_templates = nil)
            message = {ip_address_object_templates: ip_address_object_templates}
            request(:remove_access_from_ip_address_list, Boolean, message)
          end

          def remove_access_from_subnet(subnet_object_template = nil)
            message = {subnet_object_template: subnet_object_template}
            request(:remove_access_from_subnet, Boolean, message)
          end

          def remove_access_from_subnet_list(subnet_object_templates = nil)
            message = {subnet_object_templates: subnet_object_templates}
            request(:remove_access_from_subnet_list, Boolean, message)
          end

          def remove_access_from_virtual_guest(virtual_guest_object_template = nil)
            message = {virtual_guest_object_template: virtual_guest_object_template}
            request(:remove_access_from_virtual_guest, Boolean, message)
          end

          def remove_access_from_virtual_guest_list(virtual_guest_object_templates = nil)
            message = {virtual_guest_object_templates: virtual_guest_object_templates}
            request(:remove_access_from_virtual_guest_list, Boolean, message)
          end

          def remove_access_to_replicant_from_hardware_list(hardware_object_templates = nil)
            message = {hardware_object_templates: hardware_object_templates}
            request(:remove_access_to_replicant_from_hardware_list, Boolean, message)
          end

          def remove_access_to_replicant_from_ip_address_list(ip_address_object_templates = nil)
            message = {ip_address_object_templates: ip_address_object_templates}
            request(:remove_access_to_replicant_from_ip_address_list, Boolean, message)
          end

          def remove_access_to_replicant_from_subnet(subnet_object_template = nil)
            message = {subnet_object_template: subnet_object_template}
            request(:remove_access_to_replicant_from_subnet, Boolean, message)
          end

          def remove_access_to_replicant_from_subnet_list(subnet_object_templates = nil)
            message = {subnet_object_templates: subnet_object_templates}
            request(:remove_access_to_replicant_from_subnet_list, Boolean, message)
          end

          def remove_access_to_replicant_from_virtual_guest_list(virtual_guest_object_templates = nil)
            message = {virtual_guest_object_templates: virtual_guest_object_templates}
            request(:remove_access_to_replicant_from_virtual_guest_list, Boolean, message)
          end

          def remove_credential(username = nil)
            message = {username: username}
            request(:remove_credential, Boolean, message)
          end

          def restore_file(file_id = nil)
            message = {file_id: file_id}
            request(:restore_file, Softlayer::Container::Utility::File::Entity, message)
          end

          def restore_from_snapshot(snapshot_id = nil)
            message = {snapshot_id: snapshot_id}
            request(:restore_from_snapshot, Boolean, message)
          end

          def self.send_password_reminder_email(username = nil)
            message = {username: username}
            request(:send_password_reminder_email, Boolean, message)
          end

          def set_mountable(mountable = nil)
            message = {mountable: mountable}
            request(:set_mountable, Boolean, message)
          end

          def set_snapshot_allocation(capacity_gb = nil)
            message = {capacity_gb: capacity_gb}
            request(:set_snapshot_allocation, nil, message)
          end

          def upgrade_volume_capacity(item_id = nil)
            message = {item_id: item_id}
            request(:upgrade_volume_capacity, Boolean, message)
          end

          def upload_file(file = nil)
            message = {file: file}
            request(:upload_file, Softlayer::Container::Utility::File::Entity, message)
          end

          class Representer < Softlayer::Network::Storage::Backup::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
