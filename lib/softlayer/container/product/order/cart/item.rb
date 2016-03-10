module Softlayer
  module Container
    module Product
      class Order
        class Cart
          class Item < Softlayer::Model
            attr_accessor :billing_order_item_id
            attr_accessor :cluster_resource_id
            attr_accessor :configuration_url
            attr_accessor :datacenter_country_ineligibility
            attr_accessor :datacenter_description
            attr_accessor :hash
            attr_accessor :hourly_prices_flag
            attr_accessor :image_template_id
            attr_accessor :ineligible_account_countries
            attr_accessor :iscsi_os_format_type_key_name
            attr_accessor :location
            attr_accessor :name
            attr_accessor :order_container_type
            attr_accessor :package_id
            attr_accessor :package_type
            attr_accessor :preset_id
            attr_accessor :price_ids
            attr_accessor :primary_disk_partition_id
            attr_accessor :promotion_code
            attr_accessor :properties
            attr_accessor :quantity
            attr_accessor :quantity_limit
            attr_accessor :resource_id
            attr_accessor :resource_type
            attr_accessor :source_virtual_guest_id
            attr_accessor :storage_groups
            attr_accessor :tax_cache_hash
            attr_accessor :verified_config

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :billing_order_item_id, type: Integer
              property :cluster_resource_id, type: Integer
              property :configuration_url, type: String
              property :datacenter_country_ineligibility, type: String
              property :datacenter_description, type: String
              property :hash, type: String
              property :hourly_prices_flag, type: Boolean
              property :image_template_id, type: Integer
              property :ineligible_account_countries, type: String
              property :iscsi_os_format_type_key_name, type: String
              property :location, type: String
              property :name, type: String
              property :order_container_type, type: String
              property :package_id, type: Integer
              property :package_type, type: String
              property :preset_id, type: Integer
              property :primary_disk_partition_id, type: Integer
              property :promotion_code, type: String
              property :quantity, type: Integer
              property :quantity_limit, type: Integer
              property :resource_id, type: Integer
              property :resource_type, type: String
              property :source_virtual_guest_id, type: Integer
              property :tax_cache_hash, type: String
            end
          end
        end
      end
    end
  end
end
