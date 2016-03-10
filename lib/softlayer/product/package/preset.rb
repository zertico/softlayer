module Softlayer
  module Product
    class Package
      class Preset < Softlayer::Model
        SERVICE = 'SoftLayer_Product_Package_Preset'
        autoload :Attribute, 'softlayer/product/package/preset/attribute'
        autoload :Configuration, 'softlayer/product/package/preset/configuration'
        attr_accessor :description
        attr_accessor :id
        attr_accessor :is_active
        attr_accessor :key_name
        attr_accessor :name
        attr_accessor :package_id
        attr_accessor :category_count
        attr_accessor :configuration_count
        attr_accessor :package_configuration_count
        attr_accessor :price_count
        attr_accessor :storage_group_template_array_count
        attr_accessor :available_storage_units
        attr_accessor :categories
        attr_accessor :configuration
        attr_accessor :fixed_configuration_flag
        attr_accessor :lowest_preset_server_price
        attr_accessor :package
        attr_accessor :package_configuration
        attr_accessor :prices
        attr_accessor :storage_group_template_arrays
        attr_accessor :total_minimum_hourly_fee
        attr_accessor :total_minimum_recurring_fee

        def get_available_storage_units
          request(:get_available_storage_units, Integer)
        end

        def get_categories
          request(:get_categories, Array[Softlayer::Product::Item::Category])
        end

        def get_configuration
          request(:get_configuration, Array[Softlayer::Product::Package::Preset::Configuration])
        end

        def get_fixed_configuration_flag
          request(:get_fixed_configuration_flag, Boolean)
        end

        def get_lowest_preset_server_price
          request(:get_lowest_preset_server_price, Softlayer::Product::Item::Price)
        end

        def get_object
          request(:get_object, Softlayer::Product::Package::Preset)
        end

        def get_package
          request(:get_package, Softlayer::Product::Package)
        end

        def get_package_configuration
          request(:get_package_configuration, Array[Softlayer::Product::Package::Order::Configuration])
        end

        def get_prices
          request(:get_prices, Array[Softlayer::Product::Item::Price])
        end

        def get_storage_group_template_arrays
          request(:get_storage_group_template_arrays, Array[Softlayer::Configuration::Storage::Group::Template::Group])
        end

        def get_total_minimum_hourly_fee
          request(:get_total_minimum_hourly_fee, Float)
        end

        def get_total_minimum_recurring_fee
          request(:get_total_minimum_recurring_fee, Float)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :description, type: String
          property :id, type: Integer
          property :is_active, type: String
          property :key_name, type: String
          property :name, type: String
          property :package_id, type: Integer
          property :category_count, type: BigDecimal
          property :configuration_count, type: BigDecimal
          property :package_configuration_count, type: BigDecimal
          property :price_count, type: BigDecimal
          property :storage_group_template_array_count, type: BigDecimal
          property :available_storage_units, type: Integer
          property :fixed_configuration_flag, type: Boolean
          property :total_minimum_hourly_fee, type: Float
          property :total_minimum_recurring_fee, type: Float
        end
      end
    end
  end
end
