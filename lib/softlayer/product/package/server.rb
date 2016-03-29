module Softlayer
  module Product
    class Package
      class Server < Softlayer::Entity
        SERVICE = 'SoftLayer_Product_Package_Server'
        autoload :Option, 'softlayer/product/package/server/option'
        attr_accessor :catalog_id
        attr_accessor :default_ram_capacity
        attr_accessor :dual_path_network_flag
        attr_accessor :gpu_flag
        attr_accessor :hourly_billing_flag
        attr_accessor :id
        attr_accessor :item_id
        attr_accessor :item_price_id
        attr_accessor :maximum_drive_count
        attr_accessor :maximum_port_speed
        attr_accessor :maximum_ram_capacity
        attr_accessor :minimum_port_speed
        attr_accessor :outlet_flag
        attr_accessor :package_id
        attr_accessor :package_type
        attr_accessor :power_server_flag
        attr_accessor :preset_id
        attr_accessor :private_network_only_flag
        attr_accessor :processor_bus_speed
        attr_accessor :processor_cache
        attr_accessor :processor_cores
        attr_accessor :processor_count
        attr_accessor :processor_manufacturer
        attr_accessor :processor_model
        attr_accessor :processor_name
        attr_accessor :processor_speed
        attr_accessor :product_name
        attr_accessor :redundant_power_flag
        attr_accessor :starting_hourly_price
        attr_accessor :starting_monthly_price
        attr_accessor :total_core_count
        attr_accessor :txt_tpm_flag
        attr_accessor :unit_size
        attr_accessor :catalog
        attr_accessor :item
        attr_accessor :item_price
        attr_accessor :package
        attr_accessor :preset

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::Product::Package::Server])
        end

        def get_catalog
          request(:get_catalog, Softlayer::Product::Catalog)
        end

        def get_item
          request(:get_item, Softlayer::Product::Item)
        end

        def get_item_price
          request(:get_item_price, Softlayer::Product::Item::Price)
        end

        def get_object
          request(:get_object, Softlayer::Product::Package::Server)
        end

        def get_package
          request(:get_package, Softlayer::Product::Package)
        end

        def get_preset
          request(:get_preset, Softlayer::Product::Package::Preset)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :catalog_id, type: Integer
          property :default_ram_capacity, type: Float
          property :dual_path_network_flag, type: Boolean
          property :gpu_flag, type: Boolean
          property :hourly_billing_flag, type: Boolean
          property :id, type: Integer
          property :item_id, type: Integer
          property :item_price_id, type: Integer
          property :maximum_drive_count, type: Integer
          property :maximum_port_speed, type: Float
          property :maximum_ram_capacity, type: Float
          property :minimum_port_speed, type: Float
          property :outlet_flag, type: Boolean
          property :package_id, type: Integer
          property :package_type, type: String
          property :power_server_flag, type: Boolean
          property :preset_id, type: Integer
          property :private_network_only_flag, type: Boolean
          property :processor_bus_speed, type: String
          property :processor_cache, type: String
          property :processor_cores, type: Integer
          property :processor_count, type: Integer
          property :processor_manufacturer, type: String
          property :processor_model, type: String
          property :processor_name, type: String
          property :processor_speed, type: String
          property :product_name, type: String
          property :redundant_power_flag, type: Boolean
          property :starting_hourly_price, type: Float
          property :starting_monthly_price, type: Float
          property :total_core_count, type: Integer
          property :txt_tpm_flag, type: Boolean
          property :unit_size, type: Integer
        end
      end
    end
  end
end
