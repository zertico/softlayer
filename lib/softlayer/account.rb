module Softlayer
  class Account < Softlayer::Entity
    SERVICE = 'SoftLayer_Account'
    autoload :AbuseEmail, 'softlayer/account/abuse_email'
    autoload :Address, 'softlayer/account/address'
    autoload :Affiliation, 'softlayer/account/affiliation'
    autoload :Agreement, 'softlayer/account/agreement'
    autoload :Attribute, 'softlayer/account/attribute'
    autoload :Contact, 'softlayer/account/contact'
    autoload :Link, 'softlayer/account/link'
    autoload :MasterServiceAgreement, 'softlayer/account/master_service_agreement'
    autoload :Media, 'softlayer/account/media'
    autoload :Note, 'softlayer/account/note'
    autoload :Password, 'softlayer/account/password'
    autoload :Shipment, 'softlayer/account/shipment'
    autoload :Status, 'softlayer/account/status'
    autoload :Attachment, 'softlayer/account/attachment'
    autoload :Authentication, 'softlayer/account/authentication'
    autoload :Historical, 'softlayer/account/historical'
    autoload :Lockdown, 'softlayer/account/lockdown'
    autoload :Network, 'softlayer/account/network'
    autoload :Partner, 'softlayer/account/partner'
    autoload :Regional, 'softlayer/account/regional'
    autoload :Reports, 'softlayer/account/reports'
    autoload :Rwhois, 'softlayer/account/rwhois'
    attr_accessor :account_managed_resources_flag
    attr_accessor :account_status_id
    attr_accessor :address1
    attr_accessor :address2
    attr_accessor :allowed_pptp_vpn_quantity
    attr_accessor :alternate_phone
    attr_accessor :brand_id
    attr_accessor :city
    attr_accessor :claimed_tax_exempt_tx_flag
    attr_accessor :company_name
    attr_accessor :country
    attr_accessor :create_date
    attr_accessor :device_fingerprint_id
    attr_accessor :email
    attr_accessor :fax_phone
    attr_accessor :first_name
    attr_accessor :id
    attr_accessor :is_reseller
    attr_accessor :last_name
    attr_accessor :late_fee_protection_flag
    attr_accessor :modify_date
    attr_accessor :office_phone
    attr_accessor :postal_code
    attr_accessor :state
    attr_accessor :status_date
    attr_accessor :abuse_email_count
    attr_accessor :account_contact_count
    attr_accessor :account_license_count
    attr_accessor :account_link_count
    attr_accessor :active_account_license_count
    attr_accessor :active_address_count
    attr_accessor :active_billing_agreement_count
    attr_accessor :active_colocation_container_count
    attr_accessor :active_notification_subscriber_count
    attr_accessor :active_quote_count
    attr_accessor :active_virtual_license_count
    attr_accessor :adc_load_balancer_count
    attr_accessor :address_count
    attr_accessor :all_commission_billing_item_count
    attr_accessor :all_recurring_top_level_billing_item_count
    attr_accessor :all_recurring_top_level_billing_items_unfiltered_count
    attr_accessor :all_subnet_billing_item_count
    attr_accessor :all_top_level_billing_item_count
    attr_accessor :all_top_level_billing_items_unfiltered_count
    attr_accessor :application_delivery_controller_count
    attr_accessor :attribute_count
    attr_accessor :available_public_network_vlan_count
    attr_accessor :bandwidth_allotment_count
    attr_accessor :bandwidth_allotments_over_allocation_count
    attr_accessor :bandwidth_allotments_projected_over_allocation_count
    attr_accessor :bare_metal_instance_count
    attr_accessor :billing_agreement_count
    attr_accessor :block_device_template_group_count
    attr_accessor :cart_count
    attr_accessor :catalyst_enrollment_count
    attr_accessor :cdn_account_count
    attr_accessor :closed_ticket_count
    attr_accessor :datacenters_with_subnet_allocation_count
    attr_accessor :display_support_representative_assignment_count
    attr_accessor :domain_count
    attr_accessor :domain_registration_count
    attr_accessor :domains_without_secondary_dns_record_count
    attr_accessor :evault_master_user_count
    attr_accessor :evault_network_storage_count
    attr_accessor :expired_security_certificate_count
    attr_accessor :facility_log_count
    attr_accessor :flexible_credit_enrollment_count
    attr_accessor :global_ip_record_count
    attr_accessor :global_ipv4_record_count
    attr_accessor :global_ipv6_record_count
    attr_accessor :global_load_balancer_account_count
    attr_accessor :hardware_count
    attr_accessor :hardware_over_bandwidth_allocation_count
    attr_accessor :hardware_projected_over_bandwidth_allocation_count
    attr_accessor :hardware_with_cpanel_count
    attr_accessor :hardware_with_helm_count
    attr_accessor :hardware_with_mcafee_antivirus_redhat_count
    attr_accessor :hardware_with_mcafee_antivirus_window_count
    attr_accessor :hardware_with_mcafee_count
    attr_accessor :hardware_with_mcafee_intrusion_detection_system_count
    attr_accessor :hardware_with_plesk_count
    attr_accessor :hardware_with_quantastor_count
    attr_accessor :hardware_with_urchin_count
    attr_accessor :hardware_with_window_count
    attr_accessor :hourly_bare_metal_instance_count
    attr_accessor :hourly_service_billing_item_count
    attr_accessor :hourly_virtual_guest_count
    attr_accessor :hub_network_storage_count
    attr_accessor :internal_note_count
    attr_accessor :invoice_count
    attr_accessor :ip_address_count
    attr_accessor :iscsi_network_storage_count
    attr_accessor :last_five_closed_abuse_ticket_count
    attr_accessor :last_five_closed_accounting_ticket_count
    attr_accessor :last_five_closed_other_ticket_count
    attr_accessor :last_five_closed_sales_ticket_count
    attr_accessor :last_five_closed_support_ticket_count
    attr_accessor :last_five_closed_ticket_count
    attr_accessor :legacy_bandwidth_allotment_count
    attr_accessor :load_balancer_count
    attr_accessor :lockbox_network_storage_count
    attr_accessor :manual_payments_under_review_count
    attr_accessor :media_data_transfer_request_count
    attr_accessor :message_queue_account_count
    attr_accessor :monthly_bare_metal_instance_count
    attr_accessor :monthly_virtual_guest_count
    attr_accessor :nas_network_storage_count
    attr_accessor :network_gateway_count
    attr_accessor :network_hardware_count
    attr_accessor :network_message_delivery_account_count
    attr_accessor :network_monitor_down_hardware_count
    attr_accessor :network_monitor_down_virtual_guest_count
    attr_accessor :network_monitor_recovering_hardware_count
    attr_accessor :network_monitor_recovering_virtual_guest_count
    attr_accessor :network_monitor_up_hardware_count
    attr_accessor :network_monitor_up_virtual_guest_count
    attr_accessor :network_storage_count
    attr_accessor :network_storage_group_count
    attr_accessor :network_tunnel_context_count
    attr_accessor :network_vlan_count
    attr_accessor :next_billing_public_allotment_hardware_bandwidth_detail_count
    attr_accessor :next_invoice_top_level_billing_item_count
    attr_accessor :notification_subscriber_count
    attr_accessor :open_abuse_ticket_count
    attr_accessor :open_accounting_ticket_count
    attr_accessor :open_billing_ticket_count
    attr_accessor :open_cancellation_request_count
    attr_accessor :open_other_ticket_count
    attr_accessor :open_recurring_invoice_count
    attr_accessor :open_sales_ticket_count
    attr_accessor :open_stack_account_link_count
    attr_accessor :open_stack_object_storage_count
    attr_accessor :open_support_ticket_count
    attr_accessor :open_ticket_count
    attr_accessor :open_tickets_waiting_on_customer_count
    attr_accessor :order_count
    attr_accessor :orphan_billing_item_count
    attr_accessor :owned_brand_count
    attr_accessor :owned_hardware_generic_component_model_count
    attr_accessor :payment_processor_count
    attr_accessor :pending_event_count
    attr_accessor :pending_invoice_top_level_item_count
    attr_accessor :permission_group_count
    attr_accessor :permission_role_count
    attr_accessor :portable_storage_volume_count
    attr_accessor :post_provisioning_hook_count
    attr_accessor :pptp_vpn_user_count
    attr_accessor :price_restriction_count
    attr_accessor :priority_one_ticket_count
    attr_accessor :private_allotment_hardware_bandwidth_detail_count
    attr_accessor :private_block_device_template_group_count
    attr_accessor :private_ip_address_count
    attr_accessor :private_network_vlan_count
    attr_accessor :private_subnet_count
    attr_accessor :public_allotment_hardware_bandwidth_detail_count
    attr_accessor :public_ip_address_count
    attr_accessor :public_network_vlan_count
    attr_accessor :public_subnet_count
    attr_accessor :quote_count
    attr_accessor :recent_event_count
    attr_accessor :referred_account_count
    attr_accessor :regulated_workload_count
    attr_accessor :remote_management_command_request_count
    attr_accessor :replication_event_count
    attr_accessor :resource_group_count
    attr_accessor :router_count
    attr_accessor :scale_group_count
    attr_accessor :secondary_domain_count
    attr_accessor :security_certificate_count
    attr_accessor :security_scan_request_count
    attr_accessor :service_billing_item_count
    attr_accessor :shipment_count
    attr_accessor :ssh_key_count
    attr_accessor :ssl_vpn_user_count
    attr_accessor :standard_pool_virtual_guest_count
    attr_accessor :subnet_count
    attr_accessor :subnet_registration_count
    attr_accessor :subnet_registration_detail_count
    attr_accessor :support_representative_count
    attr_accessor :support_subscription_count
    attr_accessor :tag_count
    attr_accessor :ticket_count
    attr_accessor :tickets_closed_in_the_last_three_days_count
    attr_accessor :tickets_closed_today_count
    attr_accessor :transcode_account_count
    attr_accessor :upgrade_request_count
    attr_accessor :user_count
    attr_accessor :valid_security_certificate_count
    attr_accessor :virtual_dedicated_rack_count
    attr_accessor :virtual_disk_image_count
    attr_accessor :virtual_guest_count
    attr_accessor :virtual_guests_over_bandwidth_allocation_count
    attr_accessor :virtual_guests_projected_over_bandwidth_allocation_count
    attr_accessor :virtual_guests_with_cpanel_count
    attr_accessor :virtual_guests_with_mcafee_antivirus_redhat_count
    attr_accessor :virtual_guests_with_mcafee_antivirus_window_count
    attr_accessor :virtual_guests_with_mcafee_count
    attr_accessor :virtual_guests_with_mcafee_intrusion_detection_system_count
    attr_accessor :virtual_guests_with_plesk_count
    attr_accessor :virtual_guests_with_quantastor_count
    attr_accessor :virtual_guests_with_urchin_count
    attr_accessor :virtual_storage_archive_repository_count
    attr_accessor :virtual_storage_public_repository_count
    attr_accessor :abuse_email
    attr_accessor :abuse_emails
    attr_accessor :account_contacts
    attr_accessor :account_licenses
    attr_accessor :account_links
    attr_accessor :account_status
    attr_accessor :active_account_discount_billing_item
    attr_accessor :active_account_licenses
    attr_accessor :active_addresses
    attr_accessor :active_billing_agreements
    attr_accessor :active_catalyst_enrollment
    attr_accessor :active_colocation_containers
    attr_accessor :active_flexible_credit_enrollment
    attr_accessor :active_notification_subscribers
    attr_accessor :active_quotes
    attr_accessor :active_virtual_licenses
    attr_accessor :adc_load_balancers
    attr_accessor :addresses
    attr_accessor :affiliate_id
    attr_accessor :all_billing_items
    attr_accessor :all_commission_billing_items
    attr_accessor :all_recurring_top_level_billing_items
    attr_accessor :all_recurring_top_level_billing_items_unfiltered
    attr_accessor :all_subnet_billing_items
    attr_accessor :all_top_level_billing_items
    attr_accessor :all_top_level_billing_items_unfiltered
    attr_accessor :allows_bluemix_account_linking_flag
    attr_accessor :application_delivery_controllers
    attr_accessor :attributes
    attr_accessor :available_public_network_vlans
    attr_accessor :balance
    attr_accessor :bandwidth_allotments
    attr_accessor :bandwidth_allotments_over_allocation
    attr_accessor :bandwidth_allotments_projected_over_allocation
    attr_accessor :bare_metal_instances
    attr_accessor :billing_agreements
    attr_accessor :billing_info
    attr_accessor :block_device_template_groups
    attr_accessor :bluemix_linked_flag
    attr_accessor :brand
    attr_accessor :brand_account_flag
    attr_accessor :brand_key_name
    attr_accessor :can_order_additional_vlans_flag
    attr_accessor :carts
    attr_accessor :catalyst_enrollments
    attr_accessor :cdn_accounts
    attr_accessor :closed_tickets
    attr_accessor :datacenters_with_subnet_allocations
    attr_accessor :disable_payment_processing_flag
    attr_accessor :display_support_representative_assignments
    attr_accessor :domain_registrations
    attr_accessor :domains
    attr_accessor :domains_without_secondary_dns_records
    attr_accessor :evault_capacity_gb
    attr_accessor :evault_master_users
    attr_accessor :evault_network_storage
    attr_accessor :expired_security_certificates
    attr_accessor :facility_logs
    attr_accessor :flexible_credit_enrollments
    attr_accessor :global_ip_records
    attr_accessor :global_ipv4_records
    attr_accessor :global_ipv6_records
    attr_accessor :global_load_balancer_accounts
    attr_accessor :hardware
    attr_accessor :hardware_over_bandwidth_allocation
    attr_accessor :hardware_projected_over_bandwidth_allocation
    attr_accessor :hardware_with_cpanel
    attr_accessor :hardware_with_helm
    attr_accessor :hardware_with_mcafee
    attr_accessor :hardware_with_mcafee_antivirus_redhat
    attr_accessor :hardware_with_mcafee_antivirus_windows
    attr_accessor :hardware_with_mcafee_intrusion_detection_system
    attr_accessor :hardware_with_plesk
    attr_accessor :hardware_with_quantastor
    attr_accessor :hardware_with_urchin
    attr_accessor :hardware_with_windows
    attr_accessor :has_evault_bare_metal_restore_plugin_flag
    attr_accessor :has_idera_bare_metal_restore_plugin_flag
    attr_accessor :has_pending_order
    attr_accessor :has_r1soft_bare_metal_restore_plugin_flag
    attr_accessor :hourly_bare_metal_instances
    attr_accessor :hourly_service_billing_items
    attr_accessor :hourly_virtual_guests
    attr_accessor :hub_network_storage
    attr_accessor :internal_notes
    attr_accessor :invoices
    attr_accessor :ip_addresses
    attr_accessor :iscsi_network_storage
    attr_accessor :last_canceled_billing_item
    attr_accessor :last_cancelled_server_billing_item
    attr_accessor :last_five_closed_abuse_tickets
    attr_accessor :last_five_closed_accounting_tickets
    attr_accessor :last_five_closed_other_tickets
    attr_accessor :last_five_closed_sales_tickets
    attr_accessor :last_five_closed_support_tickets
    attr_accessor :last_five_closed_tickets
    attr_accessor :latest_bill_date
    attr_accessor :latest_recurring_invoice
    attr_accessor :latest_recurring_pending_invoice
    attr_accessor :legacy_bandwidth_allotments
    attr_accessor :legacy_iscsi_capacity_gb
    attr_accessor :load_balancers
    attr_accessor :lockbox_capacity_gb
    attr_accessor :lockbox_network_storage
    attr_accessor :manual_payments_under_review
    attr_accessor :master_user
    attr_accessor :media_data_transfer_requests
    attr_accessor :message_queue_accounts
    attr_accessor :monthly_bare_metal_instances
    attr_accessor :monthly_virtual_guests
    attr_accessor :nas_network_storage
    attr_accessor :network_creation_flag
    attr_accessor :network_gateways
    attr_accessor :network_hardware
    attr_accessor :network_message_delivery_accounts
    attr_accessor :network_monitor_down_hardware
    attr_accessor :network_monitor_down_virtual_guests
    attr_accessor :network_monitor_recovering_hardware
    attr_accessor :network_monitor_recovering_virtual_guests
    attr_accessor :network_monitor_up_hardware
    attr_accessor :network_monitor_up_virtual_guests
    attr_accessor :network_storage
    attr_accessor :network_storage_groups
    attr_accessor :network_tunnel_contexts
    attr_accessor :network_vlan_span
    attr_accessor :network_vlans
    attr_accessor :next_billing_public_allotment_hardware_bandwidth_details
    attr_accessor :next_invoice_incubator_exempt_total
    attr_accessor :next_invoice_top_level_billing_items
    attr_accessor :next_invoice_total_amount
    attr_accessor :next_invoice_total_one_time_amount
    attr_accessor :next_invoice_total_one_time_tax_amount
    attr_accessor :next_invoice_total_recurring_amount
    attr_accessor :next_invoice_total_recurring_amount_before_account_discount
    attr_accessor :next_invoice_total_recurring_tax_amount
    attr_accessor :next_invoice_total_taxable_recurring_amount
    attr_accessor :notification_subscribers
    attr_accessor :open_abuse_tickets
    attr_accessor :open_accounting_tickets
    attr_accessor :open_billing_tickets
    attr_accessor :open_cancellation_requests
    attr_accessor :open_other_tickets
    attr_accessor :open_recurring_invoices
    attr_accessor :open_sales_tickets
    attr_accessor :open_stack_account_links
    attr_accessor :open_stack_object_storage
    attr_accessor :open_support_tickets
    attr_accessor :open_tickets
    attr_accessor :open_tickets_waiting_on_customer
    attr_accessor :orders
    attr_accessor :orphan_billing_items
    attr_accessor :owned_brands
    attr_accessor :owned_hardware_generic_component_models
    attr_accessor :payment_processors
    attr_accessor :pending_events
    attr_accessor :pending_invoice
    attr_accessor :pending_invoice_top_level_items
    attr_accessor :pending_invoice_total_amount
    attr_accessor :pending_invoice_total_one_time_amount
    attr_accessor :pending_invoice_total_one_time_tax_amount
    attr_accessor :pending_invoice_total_recurring_amount
    attr_accessor :pending_invoice_total_recurring_tax_amount
    attr_accessor :permission_groups
    attr_accessor :permission_roles
    attr_accessor :portable_storage_volumes
    attr_accessor :post_provisioning_hooks
    attr_accessor :pptp_vpn_users
    attr_accessor :previous_recurring_revenue
    attr_accessor :price_restrictions
    attr_accessor :priority_one_tickets
    attr_accessor :private_allotment_hardware_bandwidth_details
    attr_accessor :private_block_device_template_groups
    attr_accessor :private_ip_addresses
    attr_accessor :private_network_vlans
    attr_accessor :private_subnets
    attr_accessor :public_allotment_hardware_bandwidth_details
    attr_accessor :public_ip_addresses
    attr_accessor :public_network_vlans
    attr_accessor :public_subnets
    attr_accessor :quotes
    attr_accessor :recent_events
    attr_accessor :referral_partner
    attr_accessor :referred_accounts
    attr_accessor :regulated_workloads
    attr_accessor :remote_management_command_requests
    attr_accessor :replication_events
    attr_accessor :resource_groups
    attr_accessor :routers
    attr_accessor :rwhois_data
    attr_accessor :salesforce_account_link
    attr_accessor :saml_authentication
    attr_accessor :scale_groups
    attr_accessor :secondary_domains
    attr_accessor :security_certificates
    attr_accessor :security_scan_requests
    attr_accessor :service_billing_items
    attr_accessor :shipments
    attr_accessor :ssh_keys
    attr_accessor :ssl_vpn_users
    attr_accessor :standard_pool_virtual_guests
    attr_accessor :subnet_registration_details
    attr_accessor :subnet_registrations
    attr_accessor :subnets
    attr_accessor :support_representatives
    attr_accessor :support_subscriptions
    attr_accessor :suppress_invoices_flag
    attr_accessor :tags
    attr_accessor :tickets
    attr_accessor :tickets_closed_in_the_last_three_days
    attr_accessor :tickets_closed_today
    attr_accessor :transcode_accounts
    attr_accessor :upgrade_requests
    attr_accessor :users
    attr_accessor :valid_security_certificates
    attr_accessor :vdr_updates_in_progress_flag
    attr_accessor :virtual_dedicated_racks
    attr_accessor :virtual_disk_images
    attr_accessor :virtual_guests
    attr_accessor :virtual_guests_over_bandwidth_allocation
    attr_accessor :virtual_guests_projected_over_bandwidth_allocation
    attr_accessor :virtual_guests_with_cpanel
    attr_accessor :virtual_guests_with_mcafee
    attr_accessor :virtual_guests_with_mcafee_antivirus_redhat
    attr_accessor :virtual_guests_with_mcafee_antivirus_windows
    attr_accessor :virtual_guests_with_mcafee_intrusion_detection_system
    attr_accessor :virtual_guests_with_plesk
    attr_accessor :virtual_guests_with_quantastor
    attr_accessor :virtual_guests_with_urchin
    attr_accessor :virtual_private_rack
    attr_accessor :virtual_storage_archive_repositories
    attr_accessor :virtual_storage_public_repositories

    # account_id
    # hash_code
    def self.activate_partner(message)
      request(:activate_partner, Softlayer::Account, message)
    end

    # ach_information
    def self.add_ach_information(message)
      request(:add_ach_information, Boolean, message)
    end

    # payment_option
    def self.add_referral_partner_payment_option(message)
      request(:add_referral_partner_payment_option, Boolean, message)
    end

    def self.are_vdr_updates_blocked_for_billing
      request(:are_vdr_updates_blocked_for_billing, Boolean)
    end

    # token
    # payer_id
    def self.cancel_pay_pal_transaction(message)
      request(:cancel_pay_pal_transaction, Boolean, message)
    end

    # token
    # payer_id
    def self.complete_pay_pal_transaction(message)
      request(:complete_pay_pal_transaction, String, message)
    end

    def self.count_hourly_instances
      request(:count_hourly_instances, Integer)
    end

    def self.get_abuse_email
      request(:get_abuse_email, String)
    end

    def self.get_abuse_emails
      request(:get_abuse_emails, Array[Softlayer::Account::AbuseEmail])
    end

    # start_date
    # end_date
    # backup_status
    def self.get_account_backup_history(message)
      request(:get_account_backup_history, Array[Softlayer::Container::Network::Storage::Evault::WebCc::JobDetails], message)
    end

    def self.get_account_contacts
      request(:get_account_contacts, Array[Softlayer::Account::Contact])
    end

    def self.get_account_licenses
      request(:get_account_licenses, Array[Softlayer::Software::AccountLicense])
    end

    def self.get_account_links
      request(:get_account_links, Array[Softlayer::Account::Link])
    end

    def self.get_account_status
      request(:get_account_status, Softlayer::Account::Status)
    end

    # key_name
    def self.get_account_trait_value(message)
      request(:get_account_trait_value, String, message)
    end

    def self.get_active_account_discount_billing_item
      request(:get_active_account_discount_billing_item, Softlayer::Billing::Item)
    end

    def self.get_active_account_licenses
      request(:get_active_account_licenses, Array[Softlayer::Software::AccountLicense])
    end

    def self.get_active_addresses
      request(:get_active_addresses, Array[Softlayer::Account::Address])
    end

    def self.get_active_alarms
      request(:get_active_alarms, Array[Softlayer::Container::Monitoring::Alarm::History])
    end

    def self.get_active_billing_agreements
      request(:get_active_billing_agreements, Array[Softlayer::Account::Agreement])
    end

    def self.get_active_catalyst_enrollment
      request(:get_active_catalyst_enrollment, Softlayer::Catalyst::Enrollment)
    end

    def self.get_active_colocation_containers
      request(:get_active_colocation_containers, Array[Softlayer::Billing::Item])
    end

    def self.get_active_flexible_credit_enrollment
      request(:get_active_flexible_credit_enrollment, Softlayer::FlexibleCredit::Enrollment)
    end

    def self.get_active_notification_subscribers
      request(:get_active_notification_subscribers, Array[Softlayer::Notification::Subscriber])
    end

    def self.get_active_outlet_packages
      request(:get_active_outlet_packages, Array[Softlayer::Product::Package])
    end

    def self.get_active_packages
      request(:get_active_packages, Array[Softlayer::Product::Package])
    end

    # attribute_key_name
    def self.get_active_packages_by_attribute(message)
      request(:get_active_packages_by_attribute, Array[Softlayer::Product::Package], message)
    end

    def self.get_active_private_hosted_cloud_packages
      request(:get_active_private_hosted_cloud_packages, Array[Softlayer::Product::Package])
    end

    def self.get_active_quotes
      request(:get_active_quotes, Array[Softlayer::Billing::Order::Quote])
    end

    def self.get_active_virtual_licenses
      request(:get_active_virtual_licenses, Array[Softlayer::Software::VirtualLicense])
    end

    def self.get_adc_load_balancers
      request(:get_adc_load_balancers, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::VirtualIpAddress])
    end

    def self.get_addresses
      request(:get_addresses, Array[Softlayer::Account::Address])
    end

    def self.get_affiliate_id
      request(:get_affiliate_id, String)
    end

    # start_date
    # end_date
    def self.get_aggregated_uptime_graph(message)
      request(:get_aggregated_uptime_graph, Softlayer::Container::Graph, message)
    end

    def self.get_all_billing_items
      request(:get_all_billing_items, Array[Softlayer::Billing::Item])
    end

    def self.get_all_commission_billing_items
      request(:get_all_commission_billing_items, Array[Softlayer::Billing::Item])
    end

    def self.get_all_recurring_top_level_billing_items
      request(:get_all_recurring_top_level_billing_items, Array[Softlayer::Billing::Item])
    end

    def self.get_all_recurring_top_level_billing_items_unfiltered
      request(:get_all_recurring_top_level_billing_items_unfiltered, Array[Softlayer::Billing::Item])
    end

    def self.get_all_subnet_billing_items
      request(:get_all_subnet_billing_items, Array[Softlayer::Billing::Item])
    end

    def self.get_all_top_level_billing_items
      request(:get_all_top_level_billing_items, Array[Softlayer::Billing::Item])
    end

    def self.get_all_top_level_billing_items_unfiltered
      request(:get_all_top_level_billing_items_unfiltered, Array[Softlayer::Billing::Item])
    end

    def self.get_allows_bluemix_account_linking_flag
      request(:get_allows_bluemix_account_linking_flag, Boolean)
    end

    def self.get_alternate_credit_card_data
      request(:get_alternate_credit_card_data, Softlayer::Container::Account::Payment::Method::CreditCard)
    end

    def self.get_application_delivery_controllers
      request(:get_application_delivery_controllers, Array[Softlayer::Network::Application::Delivery::Controller])
    end

    # attribute_type
    def self.get_attribute_by_type(message)
      request(:get_attribute_by_type, Softlayer::Account::Attribute, message)
    end

    def self.get_attributes
      request(:get_attributes, Array[Softlayer::Account::Attribute])
    end

    def self.get_auxiliary_notifications
      request(:get_auxiliary_notifications, Array[Softlayer::Container::Utility::Message])
    end

    def self.get_available_public_network_vlans
      request(:get_available_public_network_vlans, Array[Softlayer::Network::Vlan])
    end

    # start_date_time
    # end_date_time
    def self.get_average_archive_usage_metric_data_by_date(message)
      request(:get_average_archive_usage_metric_data_by_date, Float, message)
    end

    # start_date_time
    # end_date_time
    def self.get_average_public_usage_metric_data_by_date(message)
      request(:get_average_public_usage_metric_data_by_date, Float, message)
    end

    def self.get_balance
      request(:get_balance, Float)
    end

    def self.get_bandwidth_allotments
      request(:get_bandwidth_allotments, Array[Softlayer::Network::Bandwidth::Version1::Allotment])
    end

    def self.get_bandwidth_allotments_over_allocation
      request(:get_bandwidth_allotments_over_allocation, Array[Softlayer::Network::Bandwidth::Version1::Allotment])
    end

    def self.get_bandwidth_allotments_projected_over_allocation
      request(:get_bandwidth_allotments_projected_over_allocation, Array[Softlayer::Network::Bandwidth::Version1::Allotment])
    end

    def self.get_bare_metal_instances
      request(:get_bare_metal_instances, Array[Softlayer::Hardware])
    end

    def self.get_billing_agreements
      request(:get_billing_agreements, Array[Softlayer::Account::Agreement])
    end

    def self.get_billing_info
      request(:get_billing_info, Softlayer::Billing::Info)
    end

    def self.get_block_device_template_groups
      request(:get_block_device_template_groups, Array[Softlayer::Virtual::Guest::Block::Device::Template::Group])
    end

    def self.get_bluemix_linked_flag
      request(:get_bluemix_linked_flag, Boolean)
    end

    def self.get_brand
      request(:get_brand, Softlayer::Brand)
    end

    def self.get_brand_account_flag
      request(:get_brand_account_flag, Boolean)
    end

    def self.get_brand_key_name
      request(:get_brand_key_name, String)
    end

    def self.get_can_order_additional_vlans_flag
      request(:get_can_order_additional_vlans_flag, Boolean)
    end

    def self.get_carts
      request(:get_carts, Array[Softlayer::Billing::Order::Quote])
    end

    def self.get_catalyst_enrollments
      request(:get_catalyst_enrollments, Array[Softlayer::Catalyst::Enrollment])
    end

    def self.get_cdn_accounts
      request(:get_cdn_accounts, Array[Softlayer::Network::ContentDelivery::Account])
    end

    def self.get_closed_tickets
      request(:get_closed_tickets, Array[Softlayer::Ticket])
    end

    # detailed_graph
    def self.get_current_backup_statistics_graph(message)
      request(:get_current_backup_statistics_graph, Softlayer::Container::Account::Graph::Outputs, message)
    end

    # detailed_graph
    def self.get_current_ticket_statistics_graph(message)
      request(:get_current_ticket_statistics_graph, Softlayer::Container::Account::Graph::Outputs, message)
    end

    def self.get_current_user
      request(:get_current_user, Softlayer::User::Customer)
    end

    def self.get_datacenters_with_subnet_allocations
      request(:get_datacenters_with_subnet_allocations, Array[Softlayer::Location])
    end

    def self.get_disable_payment_processing_flag
      request(:get_disable_payment_processing_flag, Boolean)
    end

    # start_date_time
    # end_date_time
    def self.get_disk_usage_metric_data_by_date(message)
      request(:get_disk_usage_metric_data_by_date, Array[Softlayer::Metric::Tracking::Object::Data], message)
    end

    # start_date_time
    # end_date_time
    def self.get_disk_usage_metric_data_from_legacy_by_date(message)
      request(:get_disk_usage_metric_data_from_legacy_by_date, Array[Softlayer::Metric::Tracking::Object::Data], message)
    end

    # start_date_time
    # end_date_time
    def self.get_disk_usage_metric_data_from_metric_tracking_object_system_by_date(message)
      request(:get_disk_usage_metric_data_from_metric_tracking_object_system_by_date, Array[Softlayer::Metric::Tracking::Object::Data], message)
    end

    # start_date_time
    # end_date_time
    def self.get_disk_usage_metric_image_by_date(message)
      request(:get_disk_usage_metric_image_by_date, Softlayer::Container::Account::Graph::Outputs, message)
    end

    def self.get_display_support_representative_assignments
      request(:get_display_support_representative_assignments, Array[Softlayer::Account::Attachment::Employee])
    end

    def self.get_domain_registrations
      request(:get_domain_registrations, Array[Softlayer::Dns::Domain::Registration])
    end

    def self.get_domains
      request(:get_domains, Array[Softlayer::Dns::Domain])
    end

    def self.get_domains_without_secondary_dns_records
      request(:get_domains_without_secondary_dns_records, Array[Softlayer::Dns::Domain])
    end

    def self.get_evault_capacity_gb
      request(:get_evault_capacity_gb, Integer)
    end

    def self.get_evault_master_users
      request(:get_evault_master_users, Array[Softlayer::Account::Password])
    end

    def self.get_evault_network_storage
      request(:get_evault_network_storage, Array[Softlayer::Network::Storage])
    end

    # pdf_type
    # historical_type
    # start_date
    # end_date
    def self.get_executive_summary_pdf(message)
      request(:get_executive_summary_pdf, Softlayer::Base64Binary, message)
    end

    def self.get_expired_security_certificates
      request(:get_expired_security_certificates, Array[Softlayer::Security::Certificate])
    end

    def self.get_facility_logs
      request(:get_facility_logs, Array[Softlayer::User::Access::Facility::Log])
    end

    def self.get_flexible_credit_enrollments
      request(:get_flexible_credit_enrollments, Array[Softlayer::FlexibleCredit::Enrollment])
    end

    # for_next_bill_cycle
    def self.get_flexible_credit_program_info(message)
      request(:get_flexible_credit_program_info, Softlayer::Container::Account::Discount::Program, message)
    end

    def self.get_global_ip_records
      request(:get_global_ip_records, Array[Softlayer::Network::Subnet::IpAddress::Global])
    end

    def self.get_global_ipv4_records
      request(:get_global_ipv4_records, Array[Softlayer::Network::Subnet::IpAddress::Global])
    end

    def self.get_global_ipv6_records
      request(:get_global_ipv6_records, Array[Softlayer::Network::Subnet::IpAddress::Global])
    end

    def self.get_global_load_balancer_accounts
      request(:get_global_load_balancer_accounts, Array[Softlayer::Network::LoadBalancer::Global::Account])
    end

    def self.get_hardware
      request(:get_hardware, Array[Softlayer::Hardware])
    end

    def self.get_hardware_over_bandwidth_allocation
      request(:get_hardware_over_bandwidth_allocation, Array[Softlayer::Hardware])
    end

    def self.get_hardware_projected_over_bandwidth_allocation
      request(:get_hardware_projected_over_bandwidth_allocation, Array[Softlayer::Hardware])
    end

    def self.get_hardware_with_cpanel
      request(:get_hardware_with_cpanel, Array[Softlayer::Hardware])
    end

    def self.get_hardware_with_helm
      request(:get_hardware_with_helm, Array[Softlayer::Hardware])
    end

    def self.get_hardware_with_mcafee
      request(:get_hardware_with_mcafee, Array[Softlayer::Hardware])
    end

    def self.get_hardware_with_mcafee_antivirus_redhat
      request(:get_hardware_with_mcafee_antivirus_redhat, Array[Softlayer::Hardware])
    end

    def self.get_hardware_with_mcafee_antivirus_windows
      request(:get_hardware_with_mcafee_antivirus_windows, Array[Softlayer::Hardware])
    end

    def self.get_hardware_with_mcafee_intrusion_detection_system
      request(:get_hardware_with_mcafee_intrusion_detection_system, Array[Softlayer::Hardware])
    end

    def self.get_hardware_with_plesk
      request(:get_hardware_with_plesk, Array[Softlayer::Hardware])
    end

    def self.get_hardware_with_quantastor
      request(:get_hardware_with_quantastor, Array[Softlayer::Hardware])
    end

    def self.get_hardware_with_urchin
      request(:get_hardware_with_urchin, Array[Softlayer::Hardware])
    end

    def self.get_hardware_with_windows
      request(:get_hardware_with_windows, Array[Softlayer::Hardware])
    end

    def self.get_has_evault_bare_metal_restore_plugin_flag
      request(:get_has_evault_bare_metal_restore_plugin_flag, Boolean)
    end

    def self.get_has_idera_bare_metal_restore_plugin_flag
      request(:get_has_idera_bare_metal_restore_plugin_flag, Boolean)
    end

    def self.get_has_pending_order
      request(:get_has_pending_order, Integer)
    end

    def self.get_has_r1soft_bare_metal_restore_plugin_flag
      request(:get_has_r1soft_bare_metal_restore_plugin_flag, Boolean)
    end

    # start_date
    # end_date
    def self.get_historical_backup_graph(message)
      request(:get_historical_backup_graph, Softlayer::Container::Account::Graph::Outputs, message)
    end

    # start_date
    # end_date
    def self.get_historical_bandwidth_graph(message)
      request(:get_historical_bandwidth_graph, Softlayer::Container::Account::Graph::Outputs, message)
    end

    # start_date
    # end_date
    def self.get_historical_ticket_graph(message)
      request(:get_historical_ticket_graph, Softlayer::Container::Account::Graph::Outputs, message)
    end

    # start_date
    # end_date
    def self.get_historical_uptime_graph(message)
      request(:get_historical_uptime_graph, Softlayer::Container::Account::Graph::Outputs, message)
    end

    def self.get_hourly_bare_metal_instances
      request(:get_hourly_bare_metal_instances, Array[Softlayer::Hardware])
    end

    def self.get_hourly_service_billing_items
      request(:get_hourly_service_billing_items, Array[Softlayer::Billing::Item])
    end

    def self.get_hourly_virtual_guests
      request(:get_hourly_virtual_guests, Array[Softlayer::Virtual::Guest])
    end

    def self.get_hub_network_storage
      request(:get_hub_network_storage, Array[Softlayer::Network::Storage])
    end

    def self.get_internal_notes
      request(:get_internal_notes, Array[Softlayer::Account::Note])
    end

    def self.get_invoices
      request(:get_invoices, Array[Softlayer::Billing::Invoice])
    end

    def self.get_ip_addresses
      request(:get_ip_addresses, Array[Softlayer::Network::Subnet::IpAddress])
    end

    def self.get_iscsi_network_storage
      request(:get_iscsi_network_storage, Array[Softlayer::Network::Storage])
    end

    # number_of_hosts
    # location_id
    def self.get_largest_allowed_subnet_cidr(message)
      request(:get_largest_allowed_subnet_cidr, Integer, message)
    end

    def self.get_last_canceled_billing_item
      request(:get_last_canceled_billing_item, Softlayer::Billing::Item)
    end

    def self.get_last_cancelled_server_billing_item
      request(:get_last_cancelled_server_billing_item, Softlayer::Billing::Item)
    end

    def self.get_last_five_closed_abuse_tickets
      request(:get_last_five_closed_abuse_tickets, Array[Softlayer::Ticket])
    end

    def self.get_last_five_closed_accounting_tickets
      request(:get_last_five_closed_accounting_tickets, Array[Softlayer::Ticket])
    end

    def self.get_last_five_closed_other_tickets
      request(:get_last_five_closed_other_tickets, Array[Softlayer::Ticket])
    end

    def self.get_last_five_closed_sales_tickets
      request(:get_last_five_closed_sales_tickets, Array[Softlayer::Ticket])
    end

    def self.get_last_five_closed_support_tickets
      request(:get_last_five_closed_support_tickets, Array[Softlayer::Ticket])
    end

    def self.get_last_five_closed_tickets
      request(:get_last_five_closed_tickets, Array[Softlayer::Ticket])
    end

    def self.get_latest_bill_date
      request(:get_latest_bill_date, DateTime)
    end

    def self.get_latest_recurring_invoice
      request(:get_latest_recurring_invoice, Softlayer::Billing::Invoice)
    end

    def self.get_latest_recurring_pending_invoice
      request(:get_latest_recurring_pending_invoice, Softlayer::Billing::Invoice)
    end

    def self.get_legacy_bandwidth_allotments
      request(:get_legacy_bandwidth_allotments, Array[Softlayer::Network::Bandwidth::Version1::Allotment])
    end

    def self.get_legacy_iscsi_capacity_gb
      request(:get_legacy_iscsi_capacity_gb, Integer)
    end

    def self.get_load_balancers
      request(:get_load_balancers, Array[Softlayer::Network::LoadBalancer::VirtualIpAddress])
    end

    def self.get_lockbox_capacity_gb
      request(:get_lockbox_capacity_gb, Integer)
    end

    def self.get_lockbox_network_storage
      request(:get_lockbox_network_storage, Array[Softlayer::Network::Storage])
    end

    def self.get_manual_payments_under_review
      request(:get_manual_payments_under_review, Array[Softlayer::Billing::Payment::Card::ManualPayment])
    end

    def self.get_master_user
      request(:get_master_user, Softlayer::User::Customer)
    end

    def self.get_media_data_transfer_requests
      request(:get_media_data_transfer_requests, Array[Softlayer::Account::Media::Data::Transfer::Request])
    end

    def self.get_message_queue_accounts
      request(:get_message_queue_accounts, Array[Softlayer::Network::Message::Queue])
    end

    def self.get_monthly_bare_metal_instances
      request(:get_monthly_bare_metal_instances, Array[Softlayer::Hardware])
    end

    def self.get_monthly_virtual_guests
      request(:get_monthly_virtual_guests, Array[Softlayer::Virtual::Guest])
    end

    def self.get_nas_network_storage
      request(:get_nas_network_storage, Array[Softlayer::Network::Storage])
    end

    def self.get_network_creation_flag
      request(:get_network_creation_flag, Boolean)
    end

    def self.get_network_gateways
      request(:get_network_gateways, Array[Softlayer::Network::Gateway])
    end

    def self.get_network_hardware
      request(:get_network_hardware, Array[Softlayer::Hardware])
    end

    def self.get_network_message_delivery_accounts
      request(:get_network_message_delivery_accounts, Array[Softlayer::Network::Message::Delivery])
    end

    def self.get_network_monitor_down_hardware
      request(:get_network_monitor_down_hardware, Array[Softlayer::Hardware])
    end

    def self.get_network_monitor_down_virtual_guests
      request(:get_network_monitor_down_virtual_guests, Array[Softlayer::Virtual::Guest])
    end

    def self.get_network_monitor_recovering_hardware
      request(:get_network_monitor_recovering_hardware, Array[Softlayer::Hardware])
    end

    def self.get_network_monitor_recovering_virtual_guests
      request(:get_network_monitor_recovering_virtual_guests, Array[Softlayer::Virtual::Guest])
    end

    def self.get_network_monitor_up_hardware
      request(:get_network_monitor_up_hardware, Array[Softlayer::Hardware])
    end

    def self.get_network_monitor_up_virtual_guests
      request(:get_network_monitor_up_virtual_guests, Array[Softlayer::Virtual::Guest])
    end

    def self.get_network_storage
      request(:get_network_storage, Array[Softlayer::Network::Storage])
    end

    def self.get_network_storage_groups
      request(:get_network_storage_groups, Array[Softlayer::Network::Storage::Group])
    end

    def self.get_network_tunnel_contexts
      request(:get_network_tunnel_contexts, Array[Softlayer::Network::Tunnel::Module::Context])
    end

    def self.get_network_vlan_span
      request(:get_network_vlan_span, Softlayer::Account::Network::Vlan::Span)
    end

    def self.get_network_vlans
      request(:get_network_vlans, Array[Softlayer::Network::Vlan])
    end

    def self.get_next_billing_public_allotment_hardware_bandwidth_details
      request(:get_next_billing_public_allotment_hardware_bandwidth_details, Array[Softlayer::Network::Bandwidth::Version1::Allotment])
    end

    # document_create_date
    def self.get_next_invoice_excel(message)
      request(:get_next_invoice_excel, Softlayer::Base64Binary, message)
    end

    def self.get_next_invoice_incubator_exempt_total
      request(:get_next_invoice_incubator_exempt_total, Float)
    end

    # document_create_date
    def self.get_next_invoice_pdf(message)
      request(:get_next_invoice_pdf, Softlayer::Base64Binary, message)
    end

    # document_create_date
    def self.get_next_invoice_pdf_detailed(message)
      request(:get_next_invoice_pdf_detailed, Softlayer::Base64Binary, message)
    end

    def self.get_next_invoice_top_level_billing_items
      request(:get_next_invoice_top_level_billing_items, Array[Softlayer::Billing::Item])
    end

    def self.get_next_invoice_total_amount
      request(:get_next_invoice_total_amount, Float)
    end

    def self.get_next_invoice_total_one_time_amount
      request(:get_next_invoice_total_one_time_amount, Float)
    end

    def self.get_next_invoice_total_one_time_tax_amount
      request(:get_next_invoice_total_one_time_tax_amount, Float)
    end

    def self.get_next_invoice_total_recurring_amount
      request(:get_next_invoice_total_recurring_amount, Float)
    end

    def self.get_next_invoice_total_recurring_amount_before_account_discount
      request(:get_next_invoice_total_recurring_amount_before_account_discount, Float)
    end

    def self.get_next_invoice_total_recurring_tax_amount
      request(:get_next_invoice_total_recurring_tax_amount, Float)
    end

    def self.get_next_invoice_total_taxable_recurring_amount
      request(:get_next_invoice_total_taxable_recurring_amount, Float)
    end

    def self.get_next_invoice_zero_fee_item_counts
      request(:get_next_invoice_zero_fee_item_counts, Array[Softlayer::Container::Product::Item::Category::ZeroFee::Count])
    end

    def self.get_notification_subscribers
      request(:get_notification_subscribers, Array[Softlayer::Notification::Subscriber])
    end

    def self.get_object
      request(:get_object, Softlayer::Account)
    end

    def self.get_open_abuse_tickets
      request(:get_open_abuse_tickets, Array[Softlayer::Ticket])
    end

    def self.get_open_accounting_tickets
      request(:get_open_accounting_tickets, Array[Softlayer::Ticket])
    end

    def self.get_open_billing_tickets
      request(:get_open_billing_tickets, Array[Softlayer::Ticket])
    end

    def self.get_open_cancellation_requests
      request(:get_open_cancellation_requests, Array[Softlayer::Billing::Item::Cancellation::Request])
    end

    def self.get_open_other_tickets
      request(:get_open_other_tickets, Array[Softlayer::Ticket])
    end

    def self.get_open_recurring_invoices
      request(:get_open_recurring_invoices, Array[Softlayer::Billing::Invoice])
    end

    def self.get_open_sales_tickets
      request(:get_open_sales_tickets, Array[Softlayer::Ticket])
    end

    def self.get_open_stack_account_links
      request(:get_open_stack_account_links, Array[Softlayer::Account::Link])
    end

    def self.get_open_stack_object_storage
      request(:get_open_stack_object_storage, Array[Softlayer::Network::Storage])
    end

    def self.get_open_support_tickets
      request(:get_open_support_tickets, Array[Softlayer::Ticket])
    end

    def self.get_open_tickets
      request(:get_open_tickets, Array[Softlayer::Ticket])
    end

    def self.get_open_tickets_waiting_on_customer
      request(:get_open_tickets_waiting_on_customer, Array[Softlayer::Ticket])
    end

    def self.get_orders
      request(:get_orders, Array[Softlayer::Billing::Order])
    end

    def self.get_orphan_billing_items
      request(:get_orphan_billing_items, Array[Softlayer::Billing::Item])
    end

    def self.get_owned_brands
      request(:get_owned_brands, Array[Softlayer::Brand])
    end

    def self.get_owned_hardware_generic_component_models
      request(:get_owned_hardware_generic_component_models, Array[Softlayer::Hardware::Component::Model::Generic])
    end

    def self.get_payment_processors
      request(:get_payment_processors, Array[Softlayer::Billing::Payment::Processor])
    end

    def self.get_pending_credit_card_change_request_data
      request(:get_pending_credit_card_change_request_data, Array[Softlayer::Container::Account::Payment::Method::CreditCard])
    end

    def self.get_pending_events
      request(:get_pending_events, Array[Softlayer::Notification::Occurrence::Event])
    end

    def self.get_pending_invoice
      request(:get_pending_invoice, Softlayer::Billing::Invoice)
    end

    def self.get_pending_invoice_top_level_items
      request(:get_pending_invoice_top_level_items, Array[Softlayer::Billing::Invoice::Item])
    end

    def self.get_pending_invoice_total_amount
      request(:get_pending_invoice_total_amount, Float)
    end

    def self.get_pending_invoice_total_one_time_amount
      request(:get_pending_invoice_total_one_time_amount, Float)
    end

    def self.get_pending_invoice_total_one_time_tax_amount
      request(:get_pending_invoice_total_one_time_tax_amount, Float)
    end

    def self.get_pending_invoice_total_recurring_amount
      request(:get_pending_invoice_total_recurring_amount, Float)
    end

    def self.get_pending_invoice_total_recurring_tax_amount
      request(:get_pending_invoice_total_recurring_tax_amount, Float)
    end

    def self.get_permission_groups
      request(:get_permission_groups, Array[Softlayer::User::Permission::Group])
    end

    def self.get_permission_roles
      request(:get_permission_roles, Array[Softlayer::User::Permission::Role])
    end

    def self.get_portable_storage_volumes
      request(:get_portable_storage_volumes, Array[Softlayer::Virtual::Disk::Image])
    end

    def self.get_post_provisioning_hooks
      request(:get_post_provisioning_hooks, Array[Softlayer::Provisioning::Hook])
    end

    def self.get_pptp_vpn_users
      request(:get_pptp_vpn_users, Array[Softlayer::User::Customer])
    end

    def self.get_previous_recurring_revenue
      request(:get_previous_recurring_revenue, Float)
    end

    def self.get_price_restrictions
      request(:get_price_restrictions, Array[Softlayer::Product::Item::Price::Account::Restriction])
    end

    def self.get_priority_one_tickets
      request(:get_priority_one_tickets, Array[Softlayer::Ticket])
    end

    def self.get_private_allotment_hardware_bandwidth_details
      request(:get_private_allotment_hardware_bandwidth_details, Array[Softlayer::Network::Bandwidth::Version1::Allotment])
    end

    def self.get_private_block_device_template_groups
      request(:get_private_block_device_template_groups, Array[Softlayer::Virtual::Guest::Block::Device::Template::Group])
    end

    def self.get_private_ip_addresses
      request(:get_private_ip_addresses, Array[Softlayer::Network::Subnet::IpAddress])
    end

    def self.get_private_network_vlans
      request(:get_private_network_vlans, Array[Softlayer::Network::Vlan])
    end

    def self.get_private_subnets
      request(:get_private_subnets, Array[Softlayer::Network::Subnet])
    end

    def self.get_public_allotment_hardware_bandwidth_details
      request(:get_public_allotment_hardware_bandwidth_details, Array[Softlayer::Network::Bandwidth::Version1::Allotment])
    end

    def self.get_public_ip_addresses
      request(:get_public_ip_addresses, Array[Softlayer::Network::Subnet::IpAddress])
    end

    def self.get_public_network_vlans
      request(:get_public_network_vlans, Array[Softlayer::Network::Vlan])
    end

    def self.get_public_subnets
      request(:get_public_subnets, Array[Softlayer::Network::Subnet])
    end

    def self.get_quotes
      request(:get_quotes, Array[Softlayer::Billing::Order::Quote])
    end

    def self.get_recent_events
      request(:get_recent_events, Array[Softlayer::Notification::Occurrence::Event])
    end

    def self.get_referral_partner
      request(:get_referral_partner, Softlayer::Account)
    end

    def self.get_referral_partner_commission_forecast
      request(:get_referral_partner_commission_forecast, Array[Softlayer::Container::Referral::Partner::Commission])
    end

    def self.get_referral_partner_commission_history
      request(:get_referral_partner_commission_history, Array[Softlayer::Container::Referral::Partner::Commission])
    end

    def self.get_referral_partner_commission_pending
      request(:get_referral_partner_commission_pending, Array[Softlayer::Container::Referral::Partner::Commission])
    end

    def self.get_referred_accounts
      request(:get_referred_accounts, Array[Softlayer::Account])
    end

    def self.get_regulated_workloads
      request(:get_regulated_workloads, Array[Softlayer::Legal::RegulatedWorkload])
    end

    def self.get_remote_management_command_requests
      request(:get_remote_management_command_requests, Array[Softlayer::Hardware::Component::RemoteManagement::Command::Request])
    end

    def self.get_replication_events
      request(:get_replication_events, Array[Softlayer::Network::Storage::Event])
    end

    def self.get_resource_groups
      request(:get_resource_groups, Array[Softlayer::Resource::Group])
    end

    def self.get_routers
      request(:get_routers, Array[Softlayer::Hardware])
    end

    def self.get_rwhois_data
      request(:get_rwhois_data, Softlayer::Network::Subnet::Rwhois::Data)
    end

    def self.get_salesforce_account_link
      request(:get_salesforce_account_link, Softlayer::Account::Link)
    end

    def self.get_saml_authentication
      request(:get_saml_authentication, Softlayer::Account::Authentication::Saml)
    end

    def self.get_scale_groups
      request(:get_scale_groups, Array[Softlayer::Scale::Group])
    end

    def self.get_secondary_domains
      request(:get_secondary_domains, Array[Softlayer::Dns::Secondary])
    end

    def self.get_security_certificates
      request(:get_security_certificates, Array[Softlayer::Security::Certificate])
    end

    def self.get_security_scan_requests
      request(:get_security_scan_requests, Array[Softlayer::Network::Security::Scanner::Request])
    end

    def self.get_service_billing_items
      request(:get_service_billing_items, Array[Softlayer::Billing::Item])
    end

    def self.get_shared_block_device_template_groups
      request(:get_shared_block_device_template_groups, Array[Softlayer::Virtual::Guest::Block::Device::Template::Group])
    end

    def self.get_shipments
      request(:get_shipments, Array[Softlayer::Account::Shipment])
    end

    def self.get_ssh_keys
      request(:get_ssh_keys, Array[Softlayer::Security::Ssh::Key])
    end

    def self.get_ssl_vpn_users
      request(:get_ssl_vpn_users, Array[Softlayer::User::Customer])
    end

    def self.get_standard_pool_virtual_guests
      request(:get_standard_pool_virtual_guests, Array[Softlayer::Virtual::Guest])
    end

    def self.get_subnet_registration_details
      request(:get_subnet_registration_details, Array[Softlayer::Account::Regional::Registry::Detail])
    end

    def self.get_subnet_registrations
      request(:get_subnet_registrations, Array[Softlayer::Network::Subnet::Registration])
    end

    def self.get_subnets
      request(:get_subnets, Array[Softlayer::Network::Subnet])
    end

    def self.get_support_representatives
      request(:get_support_representatives, Array[Softlayer::User::Employee])
    end

    def self.get_support_subscriptions
      request(:get_support_subscriptions, Array[Softlayer::Billing::Item])
    end

    def self.get_suppress_invoices_flag
      request(:get_suppress_invoices_flag, Boolean)
    end

    def self.get_tags
      request(:get_tags, Array[Softlayer::Tag])
    end

    # for_next_bill_cycle
    def self.get_tech_incubator_program_info(message)
      request(:get_tech_incubator_program_info, Softlayer::Container::Account::Discount::Program, message)
    end

    def self.get_third_party_policies_acceptance_status
      request(:get_third_party_policies_acceptance_status, Array[Softlayer::Container::Policy::Acceptance])
    end

    def self.get_tickets
      request(:get_tickets, Array[Softlayer::Ticket])
    end

    def self.get_tickets_closed_in_the_last_three_days
      request(:get_tickets_closed_in_the_last_three_days, Array[Softlayer::Ticket])
    end

    def self.get_tickets_closed_today
      request(:get_tickets_closed_today, Array[Softlayer::Ticket])
    end

    def self.get_transcode_accounts
      request(:get_transcode_accounts, Array[Softlayer::Network::Media::Transcode::Account])
    end

    def self.get_upgrade_requests
      request(:get_upgrade_requests, Array[Softlayer::Product::Upgrade::Request])
    end

    def self.get_users
      request(:get_users, Array[Softlayer::User::Customer])
    end

    def self.get_valid_security_certificate_entries
      request(:get_valid_security_certificate_entries, Array[Softlayer::Security::Certificate::Entry])
    end

    def self.get_valid_security_certificates
      request(:get_valid_security_certificates, Array[Softlayer::Security::Certificate])
    end

    def self.get_vdr_updates_in_progress_flag
      request(:get_vdr_updates_in_progress_flag, Boolean)
    end

    def self.get_virtual_dedicated_racks
      request(:get_virtual_dedicated_racks, Array[Softlayer::Network::Bandwidth::Version1::Allotment])
    end

    def self.get_virtual_disk_images
      request(:get_virtual_disk_images, Array[Softlayer::Virtual::Disk::Image])
    end

    def self.get_virtual_guests
      request(:get_virtual_guests, Array[Softlayer::Virtual::Guest])
    end

    def self.get_virtual_guests_over_bandwidth_allocation
      request(:get_virtual_guests_over_bandwidth_allocation, Array[Softlayer::Virtual::Guest])
    end

    def self.get_virtual_guests_projected_over_bandwidth_allocation
      request(:get_virtual_guests_projected_over_bandwidth_allocation, Array[Softlayer::Virtual::Guest])
    end

    def self.get_virtual_guests_with_cpanel
      request(:get_virtual_guests_with_cpanel, Array[Softlayer::Virtual::Guest])
    end

    def self.get_virtual_guests_with_mcafee
      request(:get_virtual_guests_with_mcafee, Array[Softlayer::Virtual::Guest])
    end

    def self.get_virtual_guests_with_mcafee_antivirus_redhat
      request(:get_virtual_guests_with_mcafee_antivirus_redhat, Array[Softlayer::Virtual::Guest])
    end

    def self.get_virtual_guests_with_mcafee_antivirus_windows
      request(:get_virtual_guests_with_mcafee_antivirus_windows, Array[Softlayer::Virtual::Guest])
    end

    def self.get_virtual_guests_with_mcafee_intrusion_detection_system
      request(:get_virtual_guests_with_mcafee_intrusion_detection_system, Array[Softlayer::Virtual::Guest])
    end

    def self.get_virtual_guests_with_plesk
      request(:get_virtual_guests_with_plesk, Array[Softlayer::Virtual::Guest])
    end

    def self.get_virtual_guests_with_quantastor
      request(:get_virtual_guests_with_quantastor, Array[Softlayer::Virtual::Guest])
    end

    def self.get_virtual_guests_with_urchin
      request(:get_virtual_guests_with_urchin, Array[Softlayer::Virtual::Guest])
    end

    def self.get_virtual_private_rack
      request(:get_virtual_private_rack, Softlayer::Network::Bandwidth::Version1::Allotment)
    end

    def self.get_virtual_storage_archive_repositories
      request(:get_virtual_storage_archive_repositories, Array[Softlayer::Virtual::Storage::Repository])
    end

    def self.get_virtual_storage_public_repositories
      request(:get_virtual_storage_public_repositories, Array[Softlayer::Virtual::Storage::Repository])
    end

    def self.get_vm_ware_active_account_license_keys
      request(:get_vm_ware_active_account_license_keys, Array[String])
    end

    def self.get_windows_update_status
      request(:get_windows_update_status, Array[Softlayer::Container::Utility::Microsoft::Windows::UpdateServices::Status])
    end

    # attribute_type
    def self.has_attribute(message)
      request(:has_attribute, Boolean, message)
    end

    def self.hourly_instance_limit
      request(:hourly_instance_limit, Integer)
    end

    def self.hourly_server_limit
      request(:hourly_server_limit, Integer)
    end

    # external_account_id
    # authorization_token
    # external_service_provider_key
    def self.link_external_account(message)
      request(:link_external_account, nil, message)
    end

    def self.remove_alternate_credit_card
      request(:remove_alternate_credit_card, Boolean)
    end

    # request
    # vat_id
    # payment_role_name
    # only_change_nickname_flag
    def self.request_credit_card_change(message)
      request(:request_credit_card_change, Softlayer::Billing::Payment::Card::ChangeRequest, message)
    end

    # request
    def self.request_manual_payment(message)
      request(:request_manual_payment, Softlayer::Billing::Payment::Card::ManualPayment, message)
    end

    # amount
    # pay_with_alternate_card_flag
    # note
    def self.request_manual_payment_using_credit_card_on_file(message)
      request(:request_manual_payment_using_credit_card_on_file, Softlayer::Billing::Payment::Card::ManualPayment, message)
    end

    # emails
    def self.set_abuse_emails(message)
      request(:set_abuse_emails, Boolean, message)
    end

    # enabled
    def self.set_vlan_span(message)
      request(:set_vlan_span, Boolean, message)
    end

    def self.swap_credit_cards
      request(:swap_credit_cards, Boolean)
    end

    # object_id
    # object_type
    def self.update_vpn_users_for_resource(message)
      request(:update_vpn_users_for_resource, Boolean, message)
    end

    # account
    def self.validate(message)
      request(:validate, Array[String], message)
    end

    # amount
    def self.validate_manual_payment_amount(message)
      request(:validate_manual_payment_amount, Boolean, message)
    end

    class Representer < Softlayer::Entity::Representer
      include Representable::Hash
      include Representable::Coercion
      property :account_managed_resources_flag, type: Boolean
      property :account_status_id, type: Integer
      property :address1, type: String
      property :address2, type: String
      property :allowed_pptp_vpn_quantity, type: Integer
      property :alternate_phone, type: String
      property :brand_id, type: Integer
      property :city, type: String
      property :claimed_tax_exempt_tx_flag, type: Boolean
      property :company_name, type: String
      property :country, type: String
      property :create_date, type: DateTime
      property :device_fingerprint_id, type: String
      property :email, type: String
      property :fax_phone, type: String
      property :first_name, type: String
      property :id, type: Integer
      property :is_reseller, type: Integer
      property :last_name, type: String
      property :late_fee_protection_flag, type: Boolean
      property :modify_date, type: DateTime
      property :office_phone, type: String
      property :postal_code, type: String
      property :state, type: String
      property :status_date, type: DateTime
      property :abuse_email_count, type: BigDecimal
      property :account_contact_count, type: BigDecimal
      property :account_license_count, type: BigDecimal
      property :account_link_count, type: BigDecimal
      property :active_account_license_count, type: BigDecimal
      property :active_address_count, type: BigDecimal
      property :active_billing_agreement_count, type: BigDecimal
      property :active_colocation_container_count, type: BigDecimal
      property :active_notification_subscriber_count, type: BigDecimal
      property :active_quote_count, type: BigDecimal
      property :active_virtual_license_count, type: BigDecimal
      property :adc_load_balancer_count, type: BigDecimal
      property :address_count, type: BigDecimal
      property :all_commission_billing_item_count, type: BigDecimal
      property :all_recurring_top_level_billing_item_count, type: BigDecimal
      property :all_recurring_top_level_billing_items_unfiltered_count, type: BigDecimal
      property :all_subnet_billing_item_count, type: BigDecimal
      property :all_top_level_billing_item_count, type: BigDecimal
      property :all_top_level_billing_items_unfiltered_count, type: BigDecimal
      property :application_delivery_controller_count, type: BigDecimal
      property :attribute_count, type: BigDecimal
      property :available_public_network_vlan_count, type: BigDecimal
      property :bandwidth_allotment_count, type: BigDecimal
      property :bandwidth_allotments_over_allocation_count, type: BigDecimal
      property :bandwidth_allotments_projected_over_allocation_count, type: BigDecimal
      property :bare_metal_instance_count, type: BigDecimal
      property :billing_agreement_count, type: BigDecimal
      property :block_device_template_group_count, type: BigDecimal
      property :cart_count, type: BigDecimal
      property :catalyst_enrollment_count, type: BigDecimal
      property :cdn_account_count, type: BigDecimal
      property :closed_ticket_count, type: BigDecimal
      property :datacenters_with_subnet_allocation_count, type: BigDecimal
      property :display_support_representative_assignment_count, type: BigDecimal
      property :domain_count, type: BigDecimal
      property :domain_registration_count, type: BigDecimal
      property :domains_without_secondary_dns_record_count, type: BigDecimal
      property :evault_master_user_count, type: BigDecimal
      property :evault_network_storage_count, type: BigDecimal
      property :expired_security_certificate_count, type: BigDecimal
      property :facility_log_count, type: BigDecimal
      property :flexible_credit_enrollment_count, type: BigDecimal
      property :global_ip_record_count, type: BigDecimal
      property :global_ipv4_record_count, type: BigDecimal
      property :global_ipv6_record_count, type: BigDecimal
      property :global_load_balancer_account_count, type: BigDecimal
      property :hardware_count, type: BigDecimal
      property :hardware_over_bandwidth_allocation_count, type: BigDecimal
      property :hardware_projected_over_bandwidth_allocation_count, type: BigDecimal
      property :hardware_with_cpanel_count, type: BigDecimal
      property :hardware_with_helm_count, type: BigDecimal
      property :hardware_with_mcafee_antivirus_redhat_count, type: BigDecimal
      property :hardware_with_mcafee_antivirus_window_count, type: BigDecimal
      property :hardware_with_mcafee_count, type: BigDecimal
      property :hardware_with_mcafee_intrusion_detection_system_count, type: BigDecimal
      property :hardware_with_plesk_count, type: BigDecimal
      property :hardware_with_quantastor_count, type: BigDecimal
      property :hardware_with_urchin_count, type: BigDecimal
      property :hardware_with_window_count, type: BigDecimal
      property :hourly_bare_metal_instance_count, type: BigDecimal
      property :hourly_service_billing_item_count, type: BigDecimal
      property :hourly_virtual_guest_count, type: BigDecimal
      property :hub_network_storage_count, type: BigDecimal
      property :internal_note_count, type: BigDecimal
      property :invoice_count, type: BigDecimal
      property :ip_address_count, type: BigDecimal
      property :iscsi_network_storage_count, type: BigDecimal
      property :last_five_closed_abuse_ticket_count, type: BigDecimal
      property :last_five_closed_accounting_ticket_count, type: BigDecimal
      property :last_five_closed_other_ticket_count, type: BigDecimal
      property :last_five_closed_sales_ticket_count, type: BigDecimal
      property :last_five_closed_support_ticket_count, type: BigDecimal
      property :last_five_closed_ticket_count, type: BigDecimal
      property :legacy_bandwidth_allotment_count, type: BigDecimal
      property :load_balancer_count, type: BigDecimal
      property :lockbox_network_storage_count, type: BigDecimal
      property :manual_payments_under_review_count, type: BigDecimal
      property :media_data_transfer_request_count, type: BigDecimal
      property :message_queue_account_count, type: BigDecimal
      property :monthly_bare_metal_instance_count, type: BigDecimal
      property :monthly_virtual_guest_count, type: BigDecimal
      property :nas_network_storage_count, type: BigDecimal
      property :network_gateway_count, type: BigDecimal
      property :network_hardware_count, type: BigDecimal
      property :network_message_delivery_account_count, type: BigDecimal
      property :network_monitor_down_hardware_count, type: BigDecimal
      property :network_monitor_down_virtual_guest_count, type: BigDecimal
      property :network_monitor_recovering_hardware_count, type: BigDecimal
      property :network_monitor_recovering_virtual_guest_count, type: BigDecimal
      property :network_monitor_up_hardware_count, type: BigDecimal
      property :network_monitor_up_virtual_guest_count, type: BigDecimal
      property :network_storage_count, type: BigDecimal
      property :network_storage_group_count, type: BigDecimal
      property :network_tunnel_context_count, type: BigDecimal
      property :network_vlan_count, type: BigDecimal
      property :next_billing_public_allotment_hardware_bandwidth_detail_count, type: BigDecimal
      property :next_invoice_top_level_billing_item_count, type: BigDecimal
      property :notification_subscriber_count, type: BigDecimal
      property :open_abuse_ticket_count, type: BigDecimal
      property :open_accounting_ticket_count, type: BigDecimal
      property :open_billing_ticket_count, type: BigDecimal
      property :open_cancellation_request_count, type: BigDecimal
      property :open_other_ticket_count, type: BigDecimal
      property :open_recurring_invoice_count, type: BigDecimal
      property :open_sales_ticket_count, type: BigDecimal
      property :open_stack_account_link_count, type: BigDecimal
      property :open_stack_object_storage_count, type: BigDecimal
      property :open_support_ticket_count, type: BigDecimal
      property :open_ticket_count, type: BigDecimal
      property :open_tickets_waiting_on_customer_count, type: BigDecimal
      property :order_count, type: BigDecimal
      property :orphan_billing_item_count, type: BigDecimal
      property :owned_brand_count, type: BigDecimal
      property :owned_hardware_generic_component_model_count, type: BigDecimal
      property :payment_processor_count, type: BigDecimal
      property :pending_event_count, type: BigDecimal
      property :pending_invoice_top_level_item_count, type: BigDecimal
      property :permission_group_count, type: BigDecimal
      property :permission_role_count, type: BigDecimal
      property :portable_storage_volume_count, type: BigDecimal
      property :post_provisioning_hook_count, type: BigDecimal
      property :pptp_vpn_user_count, type: BigDecimal
      property :price_restriction_count, type: BigDecimal
      property :priority_one_ticket_count, type: BigDecimal
      property :private_allotment_hardware_bandwidth_detail_count, type: BigDecimal
      property :private_block_device_template_group_count, type: BigDecimal
      property :private_ip_address_count, type: BigDecimal
      property :private_network_vlan_count, type: BigDecimal
      property :private_subnet_count, type: BigDecimal
      property :public_allotment_hardware_bandwidth_detail_count, type: BigDecimal
      property :public_ip_address_count, type: BigDecimal
      property :public_network_vlan_count, type: BigDecimal
      property :public_subnet_count, type: BigDecimal
      property :quote_count, type: BigDecimal
      property :recent_event_count, type: BigDecimal
      property :referred_account_count, type: BigDecimal
      property :regulated_workload_count, type: BigDecimal
      property :remote_management_command_request_count, type: BigDecimal
      property :replication_event_count, type: BigDecimal
      property :resource_group_count, type: BigDecimal
      property :router_count, type: BigDecimal
      property :scale_group_count, type: BigDecimal
      property :secondary_domain_count, type: BigDecimal
      property :security_certificate_count, type: BigDecimal
      property :security_scan_request_count, type: BigDecimal
      property :service_billing_item_count, type: BigDecimal
      property :shipment_count, type: BigDecimal
      property :ssh_key_count, type: BigDecimal
      property :ssl_vpn_user_count, type: BigDecimal
      property :standard_pool_virtual_guest_count, type: BigDecimal
      property :subnet_count, type: BigDecimal
      property :subnet_registration_count, type: BigDecimal
      property :subnet_registration_detail_count, type: BigDecimal
      property :support_representative_count, type: BigDecimal
      property :support_subscription_count, type: BigDecimal
      property :tag_count, type: BigDecimal
      property :ticket_count, type: BigDecimal
      property :tickets_closed_in_the_last_three_days_count, type: BigDecimal
      property :tickets_closed_today_count, type: BigDecimal
      property :transcode_account_count, type: BigDecimal
      property :upgrade_request_count, type: BigDecimal
      property :user_count, type: BigDecimal
      property :valid_security_certificate_count, type: BigDecimal
      property :virtual_dedicated_rack_count, type: BigDecimal
      property :virtual_disk_image_count, type: BigDecimal
      property :virtual_guest_count, type: BigDecimal
      property :virtual_guests_over_bandwidth_allocation_count, type: BigDecimal
      property :virtual_guests_projected_over_bandwidth_allocation_count, type: BigDecimal
      property :virtual_guests_with_cpanel_count, type: BigDecimal
      property :virtual_guests_with_mcafee_antivirus_redhat_count, type: BigDecimal
      property :virtual_guests_with_mcafee_antivirus_window_count, type: BigDecimal
      property :virtual_guests_with_mcafee_count, type: BigDecimal
      property :virtual_guests_with_mcafee_intrusion_detection_system_count, type: BigDecimal
      property :virtual_guests_with_plesk_count, type: BigDecimal
      property :virtual_guests_with_quantastor_count, type: BigDecimal
      property :virtual_guests_with_urchin_count, type: BigDecimal
      property :virtual_storage_archive_repository_count, type: BigDecimal
      property :virtual_storage_public_repository_count, type: BigDecimal
      property :abuse_email, type: String
      property :affiliate_id, type: String
      property :allows_bluemix_account_linking_flag, type: Boolean
      property :balance, type: Float
      property :bluemix_linked_flag, type: Boolean
      property :brand_account_flag, type: Boolean
      property :brand_key_name, type: String
      property :can_order_additional_vlans_flag, type: Boolean
      property :disable_payment_processing_flag, type: Boolean
      property :evault_capacity_gb, type: Integer
      property :has_evault_bare_metal_restore_plugin_flag, type: Boolean
      property :has_idera_bare_metal_restore_plugin_flag, type: Boolean
      property :has_pending_order, type: Integer
      property :has_r1soft_bare_metal_restore_plugin_flag, type: Boolean
      property :latest_bill_date, type: DateTime
      property :legacy_iscsi_capacity_gb, type: Integer
      property :lockbox_capacity_gb, type: Integer
      property :network_creation_flag, type: Boolean
      property :next_invoice_incubator_exempt_total, type: Float
      property :next_invoice_total_amount, type: Float
      property :next_invoice_total_one_time_amount, type: Float
      property :next_invoice_total_one_time_tax_amount, type: Float
      property :next_invoice_total_recurring_amount, type: Float
      property :next_invoice_total_recurring_amount_before_account_discount, type: Float
      property :next_invoice_total_recurring_tax_amount, type: Float
      property :next_invoice_total_taxable_recurring_amount, type: Float
      property :pending_invoice_total_amount, type: Float
      property :pending_invoice_total_one_time_amount, type: Float
      property :pending_invoice_total_one_time_tax_amount, type: Float
      property :pending_invoice_total_recurring_amount, type: Float
      property :pending_invoice_total_recurring_tax_amount, type: Float
      property :previous_recurring_revenue, type: Float
      property :suppress_invoices_flag, type: Boolean
      property :vdr_updates_in_progress_flag, type: Boolean
    end
  end
end
