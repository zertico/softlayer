module Softlayer
  module Billing
    class Item < Softlayer::Model
      SERVICE = 'SoftLayer_Billing_Item'
      autoload :Hardware, 'softlayer/billing/item/hardware'
      autoload :Support, 'softlayer/billing/item/support'
      autoload :Workspace, 'softlayer/billing/item/workspace'
      autoload :Account, 'softlayer/billing/item/account'
      autoload :Association, 'softlayer/billing/item/association'
      autoload :Cancellation, 'softlayer/billing/item/cancellation'
      autoload :Ctc, 'softlayer/billing/item/ctc'
      autoload :Gateway, 'softlayer/billing/item/gateway'
      autoload :Link, 'softlayer/billing/item/link'
      autoload :Network, 'softlayer/billing/item/network'
      autoload :Software, 'softlayer/billing/item/software'
      autoload :User, 'softlayer/billing/item/user'
      autoload :Virtual, 'softlayer/billing/item/virtual'
      attr_accessor :allow_cancellation_flag
      attr_accessor :associated_billing_item_id
      attr_accessor :cancellation_date
      attr_accessor :category_code
      attr_accessor :create_date
      attr_accessor :current_hourly_charge
      attr_accessor :cycle_start_date
      attr_accessor :description
      attr_accessor :domain_name
      attr_accessor :host_name
      attr_accessor :hourly_recurring_fee
      attr_accessor :hours_used
      attr_accessor :id
      attr_accessor :labor_fee
      attr_accessor :labor_fee_tax_rate
      attr_accessor :last_bill_date
      attr_accessor :modify_date
      attr_accessor :next_bill_date
      attr_accessor :notes
      attr_accessor :one_time_fee
      attr_accessor :one_time_fee_tax_rate
      attr_accessor :order_item_id
      attr_accessor :parent_id
      attr_accessor :recurring_fee
      attr_accessor :recurring_fee_tax_rate
      attr_accessor :recurring_months
      attr_accessor :service_provider_id
      attr_accessor :setup_fee
      attr_accessor :setup_fee_tax_rate
      attr_accessor :active_associated_children_count
      attr_accessor :active_associated_guest_disk_billing_item_count
      attr_accessor :active_bundled_item_count
      attr_accessor :active_children_count
      attr_accessor :active_spare_pool_associated_guest_disk_billing_item_count
      attr_accessor :active_spare_pool_bundled_item_count
      attr_accessor :associated_billing_item_history_count
      attr_accessor :associated_children_count
      attr_accessor :associated_parent_count
      attr_accessor :available_matching_vlan_count
      attr_accessor :billable_children_count
      attr_accessor :bundle_item_count
      attr_accessor :bundled_item_count
      attr_accessor :canceled_children_count
      attr_accessor :cancellation_request_count
      attr_accessor :children_count
      attr_accessor :children_with_active_agreement_count
      attr_accessor :downgrade_item_count
      attr_accessor :filtered_next_invoice_children_count
      attr_accessor :invoice_item_count
      attr_accessor :next_invoice_children_count
      attr_accessor :non_zero_next_invoice_children_count
      attr_accessor :upgrade_item_count
      attr_accessor :account
      attr_accessor :active_agreement
      attr_accessor :active_agreement_flag
      attr_accessor :active_associated_children
      attr_accessor :active_associated_guest_disk_billing_items
      attr_accessor :active_bundled_items
      attr_accessor :active_cancellation_item
      attr_accessor :active_children
      attr_accessor :active_flag
      attr_accessor :active_spare_pool_associated_guest_disk_billing_items
      attr_accessor :active_spare_pool_bundled_items
      attr_accessor :associated_billing_item
      attr_accessor :associated_billing_item_history
      attr_accessor :associated_children
      attr_accessor :associated_parent
      attr_accessor :available_matching_vlans
      attr_accessor :bandwidth_allocation
      attr_accessor :billable_children
      attr_accessor :bundle_items
      attr_accessor :bundled_items
      attr_accessor :canceled_children
      attr_accessor :cancellation_reason
      attr_accessor :cancellation_requests
      attr_accessor :category
      attr_accessor :children
      attr_accessor :children_with_active_agreement
      attr_accessor :downgrade_items
      attr_accessor :filtered_next_invoice_children
      attr_accessor :hourly_flag
      attr_accessor :invoice_item
      attr_accessor :invoice_items
      attr_accessor :item
      attr_accessor :location
      attr_accessor :next_invoice_children
      attr_accessor :next_invoice_total_one_time_amount
      attr_accessor :next_invoice_total_one_time_tax_amount
      attr_accessor :next_invoice_total_recurring_amount
      attr_accessor :next_invoice_total_recurring_tax_amount
      attr_accessor :non_zero_next_invoice_children
      attr_accessor :order_item
      attr_accessor :original_location
      attr_accessor :package
      attr_accessor :parent
      attr_accessor :parent_virtual_guest_billing_item
      attr_accessor :pending_cancellation_flag
      attr_accessor :pending_order_item
      attr_accessor :provision_transaction
      attr_accessor :software_description
      attr_accessor :upgrade_item
      attr_accessor :upgrade_items

      def cancel_item(cancel_immediately = nil, cancel_associated_billing_items = nil, reason = nil, customer_note = nil)
        message = {cancel_immediately: cancel_immediately, cancel_associated_billing_items: cancel_associated_billing_items, reason: reason, customer_note: customer_note}
        request(:cancel_item, Boolean, message)
      end

      def cancel_service
        request(:cancel_service, Boolean)
      end

      def cancel_service_on_anniversary_date
        request(:cancel_service_on_anniversary_date, Boolean)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def get_active_agreement
        request(:get_active_agreement, Softlayer::Account::Agreement)
      end

      def get_active_agreement_flag
        request(:get_active_agreement_flag, Softlayer::Account::Agreement)
      end

      def get_active_associated_children
        request(:get_active_associated_children, Array[Softlayer::Billing::Item])
      end

      def get_active_associated_guest_disk_billing_items
        request(:get_active_associated_guest_disk_billing_items, Array[Softlayer::Billing::Item])
      end

      def get_active_bundled_items
        request(:get_active_bundled_items, Array[Softlayer::Billing::Item])
      end

      def get_active_cancellation_item
        request(:get_active_cancellation_item, Softlayer::Billing::Item::Cancellation::Request::Item)
      end

      def get_active_children
        request(:get_active_children, Array[Softlayer::Billing::Item])
      end

      def get_active_flag
        request(:get_active_flag, Boolean)
      end

      def get_active_spare_pool_associated_guest_disk_billing_items
        request(:get_active_spare_pool_associated_guest_disk_billing_items, Array[Softlayer::Billing::Item])
      end

      def get_active_spare_pool_bundled_items
        request(:get_active_spare_pool_bundled_items, Array[Softlayer::Billing::Item])
      end

      def get_associated_billing_item
        request(:get_associated_billing_item, Softlayer::Billing::Item)
      end

      def get_associated_billing_item_history
        request(:get_associated_billing_item_history, Array[Softlayer::Billing::Item::Association::History])
      end

      def get_associated_children
        request(:get_associated_children, Array[Softlayer::Billing::Item])
      end

      def get_associated_parent
        request(:get_associated_parent, Array[Softlayer::Billing::Item])
      end

      def get_available_matching_vlans
        request(:get_available_matching_vlans, Array[Softlayer::Network::Vlan])
      end

      def get_bandwidth_allocation
        request(:get_bandwidth_allocation, Softlayer::Network::Bandwidth::Version1::Allocation)
      end

      def get_billable_children
        request(:get_billable_children, Array[Softlayer::Billing::Item])
      end

      def get_bundle_items
        request(:get_bundle_items, Array[Softlayer::Product::Item::Bundles])
      end

      def get_bundled_items
        request(:get_bundled_items, Array[Softlayer::Billing::Item])
      end

      def get_canceled_children
        request(:get_canceled_children, Array[Softlayer::Billing::Item])
      end

      def get_cancellation_reason
        request(:get_cancellation_reason, Softlayer::Billing::Item::Cancellation::Reason)
      end

      def get_cancellation_requests
        request(:get_cancellation_requests, Array[Softlayer::Billing::Item::Cancellation::Request])
      end

      def get_category
        request(:get_category, Softlayer::Product::Item::Category)
      end

      def get_children
        request(:get_children, Array[Softlayer::Billing::Item])
      end

      def get_children_with_active_agreement
        request(:get_children_with_active_agreement, Array[Softlayer::Billing::Item])
      end

      def get_downgrade_items
        request(:get_downgrade_items, Array[Softlayer::Product::Item])
      end

      def get_filtered_next_invoice_children
        request(:get_filtered_next_invoice_children, Array[Softlayer::Billing::Item])
      end

      def get_hourly_flag
        request(:get_hourly_flag, Boolean)
      end

      def get_invoice_item
        request(:get_invoice_item, Softlayer::Billing::Invoice::Item)
      end

      def get_invoice_items
        request(:get_invoice_items, Array[Softlayer::Billing::Invoice::Item])
      end

      def get_item
        request(:get_item, Softlayer::Product::Item)
      end

      def get_location
        request(:get_location, Softlayer::Location)
      end

      def get_next_invoice_children
        request(:get_next_invoice_children, Array[Softlayer::Billing::Item])
      end

      def get_next_invoice_total_one_time_amount
        request(:get_next_invoice_total_one_time_amount, Float)
      end

      def get_next_invoice_total_one_time_tax_amount
        request(:get_next_invoice_total_one_time_tax_amount, Float)
      end

      def get_next_invoice_total_recurring_amount
        request(:get_next_invoice_total_recurring_amount, Float)
      end

      def get_next_invoice_total_recurring_tax_amount
        request(:get_next_invoice_total_recurring_tax_amount, Float)
      end

      def get_non_zero_next_invoice_children
        request(:get_non_zero_next_invoice_children, Array[Softlayer::Billing::Item])
      end

      def get_object
        request(:get_object, Softlayer::Billing::Item)
      end

      def get_order_item
        request(:get_order_item, Softlayer::Billing::Order::Item)
      end

      def get_original_location
        request(:get_original_location, Softlayer::Location)
      end

      def get_package
        request(:get_package, Softlayer::Product::Package)
      end

      def get_parent
        request(:get_parent, Softlayer::Billing::Item)
      end

      def get_parent_virtual_guest_billing_item
        request(:get_parent_virtual_guest_billing_item, Softlayer::Billing::Item::Virtual::Guest)
      end

      def get_pending_cancellation_flag
        request(:get_pending_cancellation_flag, Boolean)
      end

      def get_pending_order_item
        request(:get_pending_order_item, Softlayer::Billing::Order::Item)
      end

      def get_provision_transaction
        request(:get_provision_transaction, Softlayer::Provisioning::Version1::Transaction)
      end

      def self.get_service_billing_items_by_category(category_code = nil, include_zero_recurring_fee = nil)
        message = {category_code: category_code, include_zero_recurring_fee: include_zero_recurring_fee}
        request(:get_service_billing_items_by_category, Array[Softlayer::Billing::Item], message)
      end

      def get_software_description
        request(:get_software_description, Softlayer::Software::Description)
      end

      def get_upgrade_item
        request(:get_upgrade_item, Softlayer::Product::Item)
      end

      def get_upgrade_items
        request(:get_upgrade_items, Array[Softlayer::Product::Item])
      end

      def remove_association_id
        request(:remove_association_id, Boolean)
      end

      def set_association_id(associated_id = nil)
        message = {associated_id: associated_id}
        request(:set_association_id, Boolean, message)
      end

      def void_cancel_service
        request(:void_cancel_service, Boolean)
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :allow_cancellation_flag, type: Integer
        property :associated_billing_item_id, type: String
        property :cancellation_date, type: DateTime
        property :category_code, type: String
        property :create_date, type: DateTime
        property :current_hourly_charge, type: String
        property :cycle_start_date, type: DateTime
        property :description, type: String
        property :domain_name, type: String
        property :host_name, type: String
        property :hourly_recurring_fee, type: Float
        property :hours_used, type: String
        property :id, type: Integer
        property :labor_fee, type: Float
        property :labor_fee_tax_rate, type: Float
        property :last_bill_date, type: DateTime
        property :modify_date, type: DateTime
        property :next_bill_date, type: DateTime
        property :notes, type: String
        property :one_time_fee, type: Float
        property :one_time_fee_tax_rate, type: Float
        property :order_item_id, type: Integer
        property :parent_id, type: Integer
        property :recurring_fee, type: Float
        property :recurring_fee_tax_rate, type: Float
        property :recurring_months, type: Integer
        property :service_provider_id, type: Integer
        property :setup_fee, type: Float
        property :setup_fee_tax_rate, type: Float
        property :active_associated_children_count, type: BigDecimal
        property :active_associated_guest_disk_billing_item_count, type: BigDecimal
        property :active_bundled_item_count, type: BigDecimal
        property :active_children_count, type: BigDecimal
        property :active_spare_pool_associated_guest_disk_billing_item_count, type: BigDecimal
        property :active_spare_pool_bundled_item_count, type: BigDecimal
        property :associated_billing_item_history_count, type: BigDecimal
        property :associated_children_count, type: BigDecimal
        property :associated_parent_count, type: BigDecimal
        property :available_matching_vlan_count, type: BigDecimal
        property :billable_children_count, type: BigDecimal
        property :bundle_item_count, type: BigDecimal
        property :bundled_item_count, type: BigDecimal
        property :canceled_children_count, type: BigDecimal
        property :cancellation_request_count, type: BigDecimal
        property :children_count, type: BigDecimal
        property :children_with_active_agreement_count, type: BigDecimal
        property :downgrade_item_count, type: BigDecimal
        property :filtered_next_invoice_children_count, type: BigDecimal
        property :invoice_item_count, type: BigDecimal
        property :next_invoice_children_count, type: BigDecimal
        property :non_zero_next_invoice_children_count, type: BigDecimal
        property :upgrade_item_count, type: BigDecimal
        property :active_flag, type: Boolean
        property :hourly_flag, type: Boolean
        property :next_invoice_total_one_time_amount, type: Float
        property :next_invoice_total_one_time_tax_amount, type: Float
        property :next_invoice_total_recurring_amount, type: Float
        property :next_invoice_total_recurring_tax_amount, type: Float
        property :pending_cancellation_flag, type: Boolean
      end
    end
  end
end
