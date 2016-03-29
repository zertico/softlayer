module Softlayer
  module Container
    module Product
      class Order < Softlayer::Entity
        autoload :Cart, 'softlayer/container/product/order/cart'
        autoload :Network, 'softlayer/container/product/order/network'
        autoload :Property, 'softlayer/container/product/order/property'
        autoload :Receipt, 'softlayer/container/product/order/receipt'
        autoload :SshKeys, 'softlayer/container/product/order/ssh_keys'
        autoload :Account, 'softlayer/container/product/order/account'
        autoload :Attribute, 'softlayer/container/product/order/attribute'
        autoload :Billing, 'softlayer/container/product/order/billing'
        autoload :Dns, 'softlayer/container/product/order/dns'
        autoload :Gateway, 'softlayer/container/product/order/gateway'
        autoload :Hardware, 'softlayer/container/product/order/hardware'
        autoload :Monitoring, 'softlayer/container/product/order/monitoring'
        autoload :Security, 'softlayer/container/product/order/security'
        autoload :Software, 'softlayer/container/product/order/software'
        autoload :Storage, 'softlayer/container/product/order/storage'
        autoload :User, 'softlayer/container/product/order/user'
        autoload :Virtual, 'softlayer/container/product/order/virtual'
        attr_accessor :big_data_order_flag
        attr_accessor :billing_information
        attr_accessor :billing_order_item_id
        attr_accessor :cancel_url
        attr_accessor :container_identifier
        attr_accessor :container_spl_hash
        attr_accessor :currency_short_name
        attr_accessor :device_fingerprint_id
        attr_accessor :display_layer_session_id
        attr_accessor :extended_hardware_testing
        attr_accessor :flexible_credit_program_price
        attr_accessor :hardware
        attr_accessor :image_template_global_identifier
        attr_accessor :image_template_id
        attr_accessor :is_managed_order
        attr_accessor :item_category_question_answers
        attr_accessor :location
        attr_accessor :location_object
        attr_accessor :message
        attr_accessor :order_containers
        attr_accessor :order_hostnames
        attr_accessor :order_verification_exceptions
        attr_accessor :package_id
        attr_accessor :payment_type
        attr_accessor :post_tax_recurring
        attr_accessor :post_tax_recurring_hourly
        attr_accessor :post_tax_recurring_monthly
        attr_accessor :post_tax_setup
        attr_accessor :pre_tax_recurring
        attr_accessor :pre_tax_recurring_hourly
        attr_accessor :pre_tax_recurring_monthly
        attr_accessor :pre_tax_setup
        attr_accessor :presale_event
        attr_accessor :preset_id
        attr_accessor :prices
        attr_accessor :primary_disk_partition_id
        attr_accessor :priorities
        attr_accessor :private_cloud_order_flag
        attr_accessor :private_cloud_order_type
        attr_accessor :promotion_code
        attr_accessor :properties
        attr_accessor :prorated_initial_charge
        attr_accessor :prorated_order_total
        attr_accessor :provision_scripts
        attr_accessor :quantity
        attr_accessor :quote_name
        attr_accessor :regional_group
        attr_accessor :resource_group_id
        attr_accessor :resource_group_name
        attr_accessor :resource_group_template_id
        attr_accessor :return_url
        attr_accessor :send_quote_email_flag
        attr_accessor :server_core_count
        attr_accessor :source_virtual_guest_id
        attr_accessor :ssh_keys
        attr_accessor :step_id
        attr_accessor :storage_groups
        attr_accessor :tax_cache_hash
        attr_accessor :tax_completed_flag
        attr_accessor :tech_incubator_item_price
        attr_accessor :total_recurring_tax
        attr_accessor :total_setup_tax
        attr_accessor :use_hourly_pricing
        attr_accessor :virtual_guests

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :big_data_order_flag, type: Boolean
          property :billing_order_item_id, type: Integer
          property :cancel_url, type: String
          property :container_identifier, type: String
          property :container_spl_hash, type: String
          property :currency_short_name, type: String
          property :device_fingerprint_id, type: String
          property :display_layer_session_id, type: String
          property :extended_hardware_testing, type: Boolean
          property :image_template_global_identifier, type: String
          property :image_template_id, type: Integer
          property :is_managed_order, type: Integer
          property :location, type: String
          property :message, type: String
          property :package_id, type: Integer
          property :payment_type, type: String
          property :post_tax_recurring, type: Float
          property :post_tax_recurring_hourly, type: Float
          property :post_tax_recurring_monthly, type: Float
          property :post_tax_setup, type: Float
          property :pre_tax_recurring, type: Float
          property :pre_tax_recurring_hourly, type: Float
          property :pre_tax_recurring_monthly, type: Float
          property :pre_tax_setup, type: Float
          property :preset_id, type: Integer
          property :primary_disk_partition_id, type: Integer
          property :private_cloud_order_flag, type: Boolean
          property :private_cloud_order_type, type: String
          property :promotion_code, type: String
          property :prorated_initial_charge, type: Float
          property :prorated_order_total, type: Float
          property :quantity, type: Integer
          property :quote_name, type: String
          property :regional_group, type: String
          property :resource_group_id, type: Integer
          property :resource_group_name, type: String
          property :resource_group_template_id, type: Integer
          property :return_url, type: String
          property :send_quote_email_flag, type: Boolean
          property :server_core_count, type: Integer
          property :source_virtual_guest_id, type: Integer
          property :step_id, type: Integer
          property :tax_cache_hash, type: String
          property :tax_completed_flag, type: Boolean
          property :total_recurring_tax, type: Float
          property :total_setup_tax, type: Float
          property :use_hourly_pricing, type: Boolean
        end
      end
    end
  end
end
