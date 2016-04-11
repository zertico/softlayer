module Softlayer
  class Network
    class Storage
      class Backup
        class Evault < Softlayer::Network::Storage::Backup
          SERVICE = 'SoftLayer_Network_Storage_Backup_Evault'
          autoload :Version6, 'softlayer/network/storage/backup/evault/version6'

          # hardware_object_template
          def allow_access_from_hardware(message)
            request(:allow_access_from_hardware, Boolean, message)
          end

          # hardware_object_templates
          def allow_access_from_hardware_list(message)
            request(:allow_access_from_hardware_list, Boolean, message)
          end

          # type_class_name
          # host_id
          def allow_access_from_host(message)
            request(:allow_access_from_host, Softlayer::Network::Storage::Allowed::Host, message)
          end

          # host_object_templates
          def allow_access_from_host_list(message)
            request(:allow_access_from_host_list, Array[Softlayer::Network::Storage::Allowed::Host], message)
          end

          # ip_address_object_template
          def allow_access_from_ip_address(message)
            request(:allow_access_from_ip_address, Boolean, message)
          end

          # ip_address_object_templates
          def allow_access_from_ip_address_list(message)
            request(:allow_access_from_ip_address_list, Boolean, message)
          end

          # subnet_object_template
          def allow_access_from_subnet(message)
            request(:allow_access_from_subnet, Boolean, message)
          end

          # subnet_object_templates
          def allow_access_from_subnet_list(message)
            request(:allow_access_from_subnet_list, Boolean, message)
          end

          # virtual_guest_object_template
          def allow_access_from_virtual_guest(message)
            request(:allow_access_from_virtual_guest, Boolean, message)
          end

          # virtual_guest_object_templates
          def allow_access_from_virtual_guest_list(message)
            request(:allow_access_from_virtual_guest_list, Boolean, message)
          end

          # hardware_object_template
          def allow_access_to_replicant_from_hardware(message)
            request(:allow_access_to_replicant_from_hardware, Boolean, message)
          end

          # hardware_object_templates
          def allow_access_to_replicant_from_hardware_list(message)
            request(:allow_access_to_replicant_from_hardware_list, Boolean, message)
          end

          # ip_address_object_template
          def allow_access_to_replicant_from_ip_address(message)
            request(:allow_access_to_replicant_from_ip_address, Boolean, message)
          end

          # ip_address_object_templates
          def allow_access_to_replicant_from_ip_address_list(message)
            request(:allow_access_to_replicant_from_ip_address_list, Boolean, message)
          end

          # subnet_object_template
          def allow_access_to_replicant_from_subnet(message)
            request(:allow_access_to_replicant_from_subnet, Boolean, message)
          end

          # subnet_object_templates
          def allow_access_to_replicant_from_subnet_list(message)
            request(:allow_access_to_replicant_from_subnet_list, Boolean, message)
          end

          # virtual_guest_object_template
          def allow_access_to_replicant_from_virtual_guest(message)
            request(:allow_access_to_replicant_from_virtual_guest, Boolean, message)
          end

          # virtual_guest_object_templates
          def allow_access_to_replicant_from_virtual_guest_list(message)
            request(:allow_access_to_replicant_from_virtual_guest_list, Boolean, message)
          end

          # username
          def assign_credential(message)
            request(:assign_credential, Boolean, message)
          end

          # type
          def assign_new_credential(message)
            request(:assign_new_credential, Softlayer::Network::Storage::Credential, message)
          end

          # username
          # current_password
          # new_password
          def self.change_password(message)
            request(:change_password, Boolean, message)
          end

          # type
          # start_date
          # end_date
          def collect_bandwidth(message)
            request(:collect_bandwidth, BigDecimal, message)
          end

          def collect_bytes_used
            request(:collect_bytes_used, BigDecimal)
          end

          # folder
          def create_folder(message)
            request(:create_folder, Boolean, message)
          end

          # notes
          def create_snapshot(message)
            request(:create_snapshot, Softlayer::Network::Storage::Backup::Evault, message)
          end

          def delete_all_files
            request(:delete_all_files, Boolean)
          end

          # file_id
          def delete_file(message)
            request(:delete_file, Boolean, message)
          end

          # file_ids
          def delete_files(message)
            request(:delete_files, Boolean, message)
          end

          # folder
          def delete_folder(message)
            request(:delete_folder, Boolean, message)
          end

          def delete_object
            request(:delete_object, Boolean)
          end

          # tasks
          def delete_tasks(message)
            request(:delete_tasks, Boolean, message)
          end

          # schedule_type
          def disable_snapshots(message)
            request(:disable_snapshots, Boolean, message)
          end

          # file_id
          def download_file(message)
            request(:download_file, Softlayer::Container::Utility::File::Entity, message)
          end

          # username
          # new_password
          def edit_credential(message)
            request(:edit_credential, Boolean, message)
          end

          # template_object
          def edit_object(message)
            request(:edit_object, Boolean, message)
          end

          # schedule_type
          # retention_count
          # minute
          # hour
          # day_of_week
          def enable_snapshots(message)
            request(:enable_snapshots, Boolean, message)
          end

          def failback_from_replicant
            request(:failback_from_replicant, Boolean)
          end

          # replicant_id
          def failover_to_replicant(message)
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

          # filter
          def get_all_files_by_filter(message)
            request(:get_all_files_by_filter, Array[Softlayer::Container::Utility::File::Entity], message)
          end

          # filter_hostname
          def get_allowable_hardware(message)
            request(:get_allowable_hardware, Array[Softlayer::Hardware], message)
          end

          # subnet_id
          # filter_ip_address
          def get_allowable_ip_addresses(message)
            request(:get_allowable_ip_addresses, Array[Softlayer::Network::Subnet::IpAddress], message)
          end

          # filter_network_identifier
          def get_allowable_subnets(message)
            request(:get_allowable_subnets, Array[Softlayer::Network::Subnet], message)
          end

          # filter_hostname
          def get_allowable_virtual_guests(message)
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

          # username
          # type
          def self.get_by_username(message)
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

          # identifier
          def get_file_by_identifier(message)
            request(:get_file_by_identifier, Softlayer::Container::Utility::File::Entity, message)
          end

          def get_file_count
            request(:get_file_count, Integer)
          end

          # folder
          # path
          def get_file_list(message)
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

          # start_date
          # end_date
          # type
          def get_graph(message)
            request(:get_graph, Softlayer::Container::Bandwidth::GraphOutputs, message)
          end

          def get_hardware
            request(:get_hardware, Softlayer::Hardware)
          end

          # option
          # exact_match
          # criteria
          # mode
          def self.get_hardware_with_evault_first(message)
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

          def get_manual_snapshots
            request(:get_manual_snapshots, Array[Softlayer::Network::Storage])
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

          def self.get_object_storage_connection_information
            request(:get_object_storage_connection_information, Array[Softlayer::Container::Network::Service::Resource::ObjectStorage::ConnectionInformation])
          end

          # credential_object
          def self.get_objects_by_credential(message)
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

          # file_id
          def get_recycle_bin_file_by_identifier(message)
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

          # replicant_id
          def immediate_failover_to_replicant(message)
            request(:immediate_failover_to_replicant, Boolean, message)
          end

          def initiate_bare_metal_restore
            request(:initiate_bare_metal_restore, Boolean)
          end

          # hardware_id
          def initiate_bare_metal_restore_for_server(message)
            request(:initiate_bare_metal_restore_for_server, Boolean, message)
          end

          # exempt_status_key_names
          def is_blocking_operation_in_progress(message)
            request(:is_blocking_operation_in_progress, Boolean, message)
          end

          # hardware_object_template
          def remove_access_from_hardware(message)
            request(:remove_access_from_hardware, Boolean, message)
          end

          # hardware_object_templates
          def remove_access_from_hardware_list(message)
            request(:remove_access_from_hardware_list, Boolean, message)
          end

          # type_class_name
          # host_id
          def remove_access_from_host(message)
            request(:remove_access_from_host, Softlayer::Network::Storage::Allowed::Host, message)
          end

          # host_object_templates
          def remove_access_from_host_list(message)
            request(:remove_access_from_host_list, Array[Softlayer::Network::Storage::Allowed::Host], message)
          end

          # ip_address_object_template
          def remove_access_from_ip_address(message)
            request(:remove_access_from_ip_address, Boolean, message)
          end

          # ip_address_object_templates
          def remove_access_from_ip_address_list(message)
            request(:remove_access_from_ip_address_list, Boolean, message)
          end

          # subnet_object_template
          def remove_access_from_subnet(message)
            request(:remove_access_from_subnet, Boolean, message)
          end

          # subnet_object_templates
          def remove_access_from_subnet_list(message)
            request(:remove_access_from_subnet_list, Boolean, message)
          end

          # virtual_guest_object_template
          def remove_access_from_virtual_guest(message)
            request(:remove_access_from_virtual_guest, Boolean, message)
          end

          # virtual_guest_object_templates
          def remove_access_from_virtual_guest_list(message)
            request(:remove_access_from_virtual_guest_list, Boolean, message)
          end

          # hardware_object_templates
          def remove_access_to_replicant_from_hardware_list(message)
            request(:remove_access_to_replicant_from_hardware_list, Boolean, message)
          end

          # ip_address_object_templates
          def remove_access_to_replicant_from_ip_address_list(message)
            request(:remove_access_to_replicant_from_ip_address_list, Boolean, message)
          end

          # subnet_object_template
          def remove_access_to_replicant_from_subnet(message)
            request(:remove_access_to_replicant_from_subnet, Boolean, message)
          end

          # subnet_object_templates
          def remove_access_to_replicant_from_subnet_list(message)
            request(:remove_access_to_replicant_from_subnet_list, Boolean, message)
          end

          # virtual_guest_object_templates
          def remove_access_to_replicant_from_virtual_guest_list(message)
            request(:remove_access_to_replicant_from_virtual_guest_list, Boolean, message)
          end

          # username
          def remove_credential(message)
            request(:remove_credential, Boolean, message)
          end

          # file_id
          def restore_file(message)
            request(:restore_file, Softlayer::Container::Utility::File::Entity, message)
          end

          # snapshot_id
          def restore_from_snapshot(message)
            request(:restore_from_snapshot, Boolean, message)
          end

          # username
          def self.send_password_reminder_email(message)
            request(:send_password_reminder_email, Boolean, message)
          end

          # mountable
          def set_mountable(message)
            request(:set_mountable, Boolean, message)
          end

          # capacity_gb
          def set_snapshot_allocation(message)
            request(:set_snapshot_allocation, nil, message)
          end

          # item_id
          def upgrade_volume_capacity(message)
            request(:upgrade_volume_capacity, Boolean, message)
          end

          # file
          def upload_file(message)
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
