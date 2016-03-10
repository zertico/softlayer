module Softlayer
  module Product
    class Package < Softlayer::Model
      SERVICE = 'SoftLayer_Product_Package'
      autoload :Attribute, 'softlayer/product/package/attribute'
      autoload :Inventory, 'softlayer/product/package/inventory'
      autoload :Items, 'softlayer/product/package/items'
      autoload :Locations, 'softlayer/product/package/locations'
      autoload :Preset, 'softlayer/product/package/preset'
      autoload :Server, 'softlayer/product/package/server'
      autoload :Type, 'softlayer/product/package/type'
      autoload :Item, 'softlayer/product/package/item'
      autoload :Order, 'softlayer/product/package/order'
      attr_accessor :description
      attr_accessor :first_order_step_id
      attr_accessor :id
      attr_accessor :is_active
      attr_accessor :name
      attr_accessor :sub_description
      attr_accessor :unit_size
      attr_accessor :account_restricted_category_count
      attr_accessor :active_preset_count
      attr_accessor :active_ram_item_count
      attr_accessor :active_server_item_count
      attr_accessor :active_software_item_count
      attr_accessor :active_usage_price_count
      attr_accessor :attribute_count
      attr_accessor :available_location_count
      attr_accessor :category_count
      attr_accessor :configuration_count
      attr_accessor :default_ram_item_count
      attr_accessor :deployment_count
      attr_accessor :deployment_package_count
      attr_accessor :item_conflict_count
      attr_accessor :item_count
      attr_accessor :item_location_conflict_count
      attr_accessor :item_price_count
      attr_accessor :item_price_reference_count
      attr_accessor :location_count
      attr_accessor :order_premium_count
      attr_accessor :region_count
      attr_accessor :account_restricted_categories
      attr_accessor :account_restricted_prices_flag
      attr_accessor :active_presets
      attr_accessor :active_ram_items
      attr_accessor :active_server_items
      attr_accessor :active_software_items
      attr_accessor :active_usage_prices
      attr_accessor :additional_service_flag
      attr_accessor :attributes
      attr_accessor :available_locations
      attr_accessor :available_storage_units
      attr_accessor :categories
      attr_accessor :configuration
      attr_accessor :default_ram_items
      attr_accessor :deployment_node_type
      attr_accessor :deployment_packages
      attr_accessor :deployment_type
      attr_accessor :deployments
      attr_accessor :disallow_custom_disk_partitions
      attr_accessor :first_order_step
      attr_accessor :gateway_appliance_flag
      attr_accessor :gpu_flag
      attr_accessor :hourly_billing_available_flag
      attr_accessor :item_conflicts
      attr_accessor :item_location_conflicts
      attr_accessor :item_price_references
      attr_accessor :item_prices
      attr_accessor :items
      attr_accessor :locations
      attr_accessor :lowest_server_price
      attr_accessor :maximum_port_speed
      attr_accessor :minimum_port_speed
      attr_accessor :mongo_db_engineered_flag
      attr_accessor :order_premiums
      attr_accessor :preconfigured_flag
      attr_accessor :preset_configuration_required_flag
      attr_accessor :prevent_vlan_selection_flag
      attr_accessor :private_hosted_cloud_package_flag
      attr_accessor :private_hosted_cloud_package_type
      attr_accessor :private_network_only_flag
      attr_accessor :quanta_stor_package_flag
      attr_accessor :raid_disk_restriction_flag
      attr_accessor :redundant_power_flag
      attr_accessor :regions
      attr_accessor :resource_group_template
      attr_accessor :top_level_item_category_code
      attr_accessor :type

      def get_account_restricted_categories
        request(:get_account_restricted_categories, Array[Softlayer::Product::Item::Category])
      end

      def get_account_restricted_prices_flag
        request(:get_account_restricted_prices_flag, Boolean)
      end

      def get_active_items
        request(:get_active_items, Array[Softlayer::Product::Item])
      end

      def self.get_active_packages_by_attribute(attribute_key_name = nil)
        message = {attribute_key_name: attribute_key_name}
        request(:get_active_packages_by_attribute, Array[Softlayer::Product::Package], message)
      end

      def get_active_presets
        request(:get_active_presets, Array[Softlayer::Product::Package::Preset])
      end

      def self.get_active_private_hosted_cloud_packages
        request(:get_active_private_hosted_cloud_packages, Array[Softlayer::Product::Package])
      end

      def get_active_ram_items
        request(:get_active_ram_items, Array[Softlayer::Product::Item])
      end

      def get_active_server_items
        request(:get_active_server_items, Array[Softlayer::Product::Item])
      end

      def get_active_software_items
        request(:get_active_software_items, Array[Softlayer::Product::Item])
      end

      def get_active_usage_prices
        request(:get_active_usage_prices, Array[Softlayer::Product::Item::Price])
      end

      def get_active_usage_rate_prices(location_id = nil, category_code = nil)
        message = {location_id: location_id, category_code: category_code}
        request(:get_active_usage_rate_prices, Array[Softlayer::Product::Item::Price], message)
      end

      def get_additional_service_flag
        request(:get_additional_service_flag, Boolean)
      end

      def self.get_all_objects
        request(:get_all_objects, Array[Softlayer::Product::Package])
      end

      def get_attributes
        request(:get_attributes, Array[Softlayer::Product::Package::Attribute])
      end

      def get_available_locations
        request(:get_available_locations, Array[Softlayer::Product::Package::Locations])
      end

      def self.get_available_packages_for_image_template(image_template = nil)
        message = {image_template: image_template}
        request(:get_available_packages_for_image_template, Array[Softlayer::Product::Package], message)
      end

      def get_available_storage_units
        request(:get_available_storage_units, Integer)
      end

      def get_categories
        request(:get_categories, Array[Softlayer::Product::Item::Category])
      end

      def get_cdn_items
        request(:get_cdn_items, Array[Softlayer::Product::Item])
      end

      def get_cloud_storage_items(provider = nil)
        message = {provider: provider}
        request(:get_cloud_storage_items, Array[Softlayer::Product::Item], message)
      end

      def get_configuration
        request(:get_configuration, Array[Softlayer::Product::Package::Order::Configuration])
      end

      def get_default_ram_items
        request(:get_default_ram_items, Array[Softlayer::Product::Item])
      end

      def get_deployment_node_type
        request(:get_deployment_node_type, String)
      end

      def get_deployment_packages
        request(:get_deployment_packages, Array[Softlayer::Product::Package])
      end

      def get_deployment_type
        request(:get_deployment_type, String)
      end

      def get_deployments
        request(:get_deployments, Array[Softlayer::Product::Package])
      end

      def get_disallow_custom_disk_partitions
        request(:get_disallow_custom_disk_partitions, Boolean)
      end

      def get_first_order_step
        request(:get_first_order_step, Softlayer::Product::Package::Order::Step)
      end

      def get_gateway_appliance_flag
        request(:get_gateway_appliance_flag, Boolean)
      end

      def get_gpu_flag
        request(:get_gpu_flag, Boolean)
      end

      def get_hourly_billing_available_flag
        request(:get_hourly_billing_available_flag, Boolean)
      end

      def self.get_item_availability_types
        request(:get_item_availability_types, Array[Softlayer::Product::Item::Attribute::Type])
      end

      def get_item_conflicts
        request(:get_item_conflicts, Array[Softlayer::Product::Item::Resource::Conflict])
      end

      def get_item_location_conflicts
        request(:get_item_location_conflicts, Array[Softlayer::Product::Item::Resource::Conflict])
      end

      def get_item_price_references
        request(:get_item_price_references, Array[Softlayer::Product::Package::Item::Prices])
      end

      def get_item_prices
        request(:get_item_prices, Array[Softlayer::Product::Item::Price])
      end

      def get_item_prices_from_software_descriptions(software_descriptions = nil, include_translations_flag = nil, return_all_prices_flag = nil)
        message = {software_descriptions: software_descriptions, include_translations_flag: include_translations_flag, return_all_prices_flag: return_all_prices_flag}
        request(:get_item_prices_from_software_descriptions, Array[Softlayer::Product::Item::Price], message)
      end

      def get_items
        request(:get_items, Array[Softlayer::Product::Item])
      end

      def get_items_from_image_template(image_template = nil)
        message = {image_template: image_template}
        request(:get_items_from_image_template, Array[Softlayer::Product::Item], message)
      end

      def get_locations
        request(:get_locations, Array[Softlayer::Location])
      end

      def get_lowest_server_price
        request(:get_lowest_server_price, Softlayer::Product::Item::Price)
      end

      def get_maximum_port_speed
        request(:get_maximum_port_speed, Integer)
      end

      def get_message_queue_items
        request(:get_message_queue_items, Array[Softlayer::Product::Item])
      end

      def get_minimum_port_speed
        request(:get_minimum_port_speed, Integer)
      end

      def get_mongo_db_engineered_flag
        request(:get_mongo_db_engineered_flag, Boolean)
      end

      def get_object
        request(:get_object, Softlayer::Product::Package)
      end

      def get_object_storage_datacenters
        request(:get_object_storage_datacenters, Array[Softlayer::Container::Product::Order::Network::Storage::Hub::Datacenter])
      end

      def get_order_premiums
        request(:get_order_premiums, Array[Softlayer::Product::Item::Price::Premium])
      end

      def get_preconfigured_flag
        request(:get_preconfigured_flag, Boolean)
      end

      def get_preset_configuration_required_flag
        request(:get_preset_configuration_required_flag, Boolean)
      end

      def get_prevent_vlan_selection_flag
        request(:get_prevent_vlan_selection_flag, Boolean)
      end

      def get_private_hosted_cloud_package_flag
        request(:get_private_hosted_cloud_package_flag, Boolean)
      end

      def get_private_hosted_cloud_package_type
        request(:get_private_hosted_cloud_package_type, String)
      end

      def get_private_network_only_flag
        request(:get_private_network_only_flag, Boolean)
      end

      def get_quanta_stor_package_flag
        request(:get_quanta_stor_package_flag, Boolean)
      end

      def get_raid_disk_restriction_flag
        request(:get_raid_disk_restriction_flag, Boolean)
      end

      def get_redundant_power_flag
        request(:get_redundant_power_flag, Boolean)
      end

      def get_regions
        request(:get_regions, Array[Softlayer::Location::Region])
      end

      def get_resource_group_template
        request(:get_resource_group_template, Softlayer::Resource::Group::Template)
      end

      def get_standard_categories
        request(:get_standard_categories, Array[Softlayer::Product::Item::Category])
      end

      def get_top_level_item_category_code
        request(:get_top_level_item_category_code, String)
      end

      def get_type
        request(:get_type, Softlayer::Product::Package::Type)
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :description, type: String
        property :first_order_step_id, type: Integer
        property :id, type: Integer
        property :is_active, type: Integer
        property :name, type: String
        property :sub_description, type: String
        property :unit_size, type: Integer
        property :account_restricted_category_count, type: BigDecimal
        property :active_preset_count, type: BigDecimal
        property :active_ram_item_count, type: BigDecimal
        property :active_server_item_count, type: BigDecimal
        property :active_software_item_count, type: BigDecimal
        property :active_usage_price_count, type: BigDecimal
        property :attribute_count, type: BigDecimal
        property :available_location_count, type: BigDecimal
        property :category_count, type: BigDecimal
        property :configuration_count, type: BigDecimal
        property :default_ram_item_count, type: BigDecimal
        property :deployment_count, type: BigDecimal
        property :deployment_package_count, type: BigDecimal
        property :item_conflict_count, type: BigDecimal
        property :item_count, type: BigDecimal
        property :item_location_conflict_count, type: BigDecimal
        property :item_price_count, type: BigDecimal
        property :item_price_reference_count, type: BigDecimal
        property :location_count, type: BigDecimal
        property :order_premium_count, type: BigDecimal
        property :region_count, type: BigDecimal
        property :account_restricted_prices_flag, type: Boolean
        property :additional_service_flag, type: Boolean
        property :available_storage_units, type: Integer
        property :deployment_node_type, type: String
        property :deployment_type, type: String
        property :disallow_custom_disk_partitions, type: Boolean
        property :gateway_appliance_flag, type: Boolean
        property :gpu_flag, type: Boolean
        property :hourly_billing_available_flag, type: Boolean
        property :maximum_port_speed, type: Integer
        property :minimum_port_speed, type: Integer
        property :mongo_db_engineered_flag, type: Boolean
        property :preconfigured_flag, type: Boolean
        property :preset_configuration_required_flag, type: Boolean
        property :prevent_vlan_selection_flag, type: Boolean
        property :private_hosted_cloud_package_flag, type: Boolean
        property :private_hosted_cloud_package_type, type: String
        property :private_network_only_flag, type: Boolean
        property :quanta_stor_package_flag, type: Boolean
        property :raid_disk_restriction_flag, type: Boolean
        property :redundant_power_flag, type: Boolean
        property :top_level_item_category_code, type: String
      end
    end
  end
end
