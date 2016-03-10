module Softlayer
  module Product
    class Item
      class Price < Softlayer::Model
        SERVICE = 'SoftLayer_Product_Item_Price'
        autoload :Attribute, 'softlayer/product/item/price/attribute'
        autoload :Premium, 'softlayer/product/item/price/premium'
        autoload :Account, 'softlayer/product/item/price/account'
        attr_accessor :current_price_flag
        attr_accessor :hourly_recurring_fee
        attr_accessor :id
        attr_accessor :item_id
        attr_accessor :labor_fee
        attr_accessor :location_group_id
        attr_accessor :on_sale_flag
        attr_accessor :one_time_fee
        attr_accessor :one_time_fee_tax
        attr_accessor :order_options
        attr_accessor :prorated_recurring_fee
        attr_accessor :prorated_recurring_fee_tax
        attr_accessor :quantity
        attr_accessor :recurring_fee
        attr_accessor :recurring_fee_tax
        attr_accessor :setup_fee
        attr_accessor :sort
        attr_accessor :usage_rate
        attr_accessor :account_restriction_count
        attr_accessor :attribute_count
        attr_accessor :bundle_reference_count
        attr_accessor :category_count
        attr_accessor :inventory_count
        attr_accessor :order_premium_count
        attr_accessor :package_count
        attr_accessor :package_reference_count
        attr_accessor :preset_configuration_count
        attr_accessor :account_restrictions
        attr_accessor :attributes
        attr_accessor :big_data_os_journal_disk_flag
        attr_accessor :bundle_references
        attr_accessor :capacity_restriction_maximum
        attr_accessor :capacity_restriction_minimum
        attr_accessor :capacity_restriction_type
        attr_accessor :categories
        attr_accessor :defined_software_license_flag
        attr_accessor :inventory
        attr_accessor :item
        attr_accessor :order_premiums
        attr_accessor :package_references
        attr_accessor :packages
        attr_accessor :preset_configurations
        attr_accessor :pricing_location_group
        attr_accessor :required_core_count

        def get_account_restrictions
          request(:get_account_restrictions, Array[Softlayer::Product::Item::Price::Account::Restriction])
        end

        def get_attributes
          request(:get_attributes, Array[Softlayer::Product::Item::Price::Attribute])
        end

        def get_big_data_os_journal_disk_flag
          request(:get_big_data_os_journal_disk_flag, Boolean)
        end

        def get_bundle_references
          request(:get_bundle_references, Array[Softlayer::Product::Item::Bundles])
        end

        def get_capacity_restriction_maximum
          request(:get_capacity_restriction_maximum, String)
        end

        def get_capacity_restriction_minimum
          request(:get_capacity_restriction_minimum, String)
        end

        def get_capacity_restriction_type
          request(:get_capacity_restriction_type, String)
        end

        def get_categories
          request(:get_categories, Array[Softlayer::Product::Item::Category])
        end

        def get_defined_software_license_flag
          request(:get_defined_software_license_flag, Boolean)
        end

        def get_inventory
          request(:get_inventory, Array[Softlayer::Product::Package::Inventory])
        end

        def get_item
          request(:get_item, Softlayer::Product::Item)
        end

        def get_object
          request(:get_object, Softlayer::Product::Item::Price)
        end

        def get_order_premiums
          request(:get_order_premiums, Array[Softlayer::Product::Item::Price::Premium])
        end

        def get_package_references
          request(:get_package_references, Array[Softlayer::Product::Package::Item::Prices])
        end

        def get_packages
          request(:get_packages, Array[Softlayer::Product::Package])
        end

        def get_preset_configurations
          request(:get_preset_configurations, Array[Softlayer::Product::Package::Preset::Configuration])
        end

        def get_pricing_location_group
          request(:get_pricing_location_group, Softlayer::Location::Group::Pricing)
        end

        def get_required_core_count
          request(:get_required_core_count, Integer)
        end

        def self.get_usage_rate_prices(location = nil, items = nil)
          message = {location: location, items: items}
          request(:get_usage_rate_prices, Array[Softlayer::Product::Item::Price], message)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :current_price_flag, type: Boolean
          property :hourly_recurring_fee, type: Float
          property :id, type: Integer
          property :item_id, type: Integer
          property :labor_fee, type: Float
          property :location_group_id, type: Integer
          property :on_sale_flag, type: Boolean
          property :one_time_fee, type: Float
          property :one_time_fee_tax, type: Float
          property :prorated_recurring_fee, type: Float
          property :prorated_recurring_fee_tax, type: Float
          property :quantity, type: Integer
          property :recurring_fee, type: Float
          property :recurring_fee_tax, type: Float
          property :setup_fee, type: Float
          property :sort, type: Integer
          property :usage_rate, type: Float
          property :account_restriction_count, type: BigDecimal
          property :attribute_count, type: BigDecimal
          property :bundle_reference_count, type: BigDecimal
          property :category_count, type: BigDecimal
          property :inventory_count, type: BigDecimal
          property :order_premium_count, type: BigDecimal
          property :package_count, type: BigDecimal
          property :package_reference_count, type: BigDecimal
          property :preset_configuration_count, type: BigDecimal
          property :big_data_os_journal_disk_flag, type: Boolean
          property :capacity_restriction_maximum, type: String
          property :capacity_restriction_minimum, type: String
          property :capacity_restriction_type, type: String
          property :defined_software_license_flag, type: Boolean
          property :required_core_count, type: Integer
        end
      end
    end
  end
end
