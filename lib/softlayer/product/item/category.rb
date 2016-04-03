module Softlayer
  module Product
    class Item
      class Category < Softlayer::Entity
        SERVICE = 'SoftLayer_Product_Item_Category'
        autoload :Group, 'softlayer/product/item/category/group'
        autoload :Question, 'softlayer/product/item/category/question'
        autoload :Order, 'softlayer/product/item/category/order'
        attr_accessor :category_code
        attr_accessor :id
        attr_accessor :name
        attr_accessor :quantity_limit
        attr_accessor :billing_item_count
        attr_accessor :group_count
        attr_accessor :order_option_count
        attr_accessor :package_configuration_count
        attr_accessor :preset_configuration_count
        attr_accessor :question_count
        attr_accessor :question_reference_count
        attr_accessor :billing_items
        attr_accessor :group
        attr_accessor :groups
        attr_accessor :order_options
        attr_accessor :package_configurations
        attr_accessor :preset_configurations
        attr_accessor :question_references
        attr_accessor :questions

        def get_additional_products_for_category
          request(:get_additional_products_for_category, Array[Softlayer::Product::Item])
        end

        def self.get_bandwidth_categories
          request(:get_bandwidth_categories, Array[Softlayer::Product::Item::Category])
        end

        def get_billing_items
          request(:get_billing_items, Array[Softlayer::Billing::Item])
        end

        # reset_cache
        def self.get_computing_categories(message)
          request(:get_computing_categories, Array[Softlayer::Product::Item::Category], message)
        end

        def self.get_custom_usage_rates_categories
          request(:get_custom_usage_rates_categories, Array[Softlayer::Product::Item::Category])
        end

        def get_group
          request(:get_group, Softlayer::Product::Item::Category::Group)
        end

        def get_groups
          request(:get_groups, Array[Softlayer::Product::Package::Item::Category::Group])
        end

        def get_object
          request(:get_object, Softlayer::Product::Item::Category)
        end

        def get_order_options
          request(:get_order_options, Array[Softlayer::Product::Item::Category::Order::Option::Type])
        end

        def get_package_configurations
          request(:get_package_configurations, Array[Softlayer::Product::Package::Order::Configuration])
        end

        def get_preset_configurations
          request(:get_preset_configurations, Array[Softlayer::Product::Package::Preset::Configuration])
        end

        def get_question_references
          request(:get_question_references, Array[Softlayer::Product::Item::Category::Question::Xref])
        end

        def get_questions
          request(:get_questions, Array[Softlayer::Product::Item::Category::Question])
        end

        def self.get_software_categories
          request(:get_software_categories, Array[Softlayer::Product::Item::Category])
        end

        def self.get_subnet_categories
          request(:get_subnet_categories, Array[Softlayer::Product::Item::Category])
        end

        # reset_cache
        def self.get_top_level_categories(message)
          request(:get_top_level_categories, Array[Softlayer::Product::Item::Category], message)
        end

        def self.get_valid_cancelable_service_item_categories
          request(:get_valid_cancelable_service_item_categories, Array[Softlayer::Product::Item::Category])
        end

        def self.get_vlan_categories
          request(:get_vlan_categories, Array[Softlayer::Product::Item::Category])
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :category_code, type: String
          property :id, type: Integer
          property :name, type: String
          property :quantity_limit, type: Integer
          property :billing_item_count, type: BigDecimal
          property :group_count, type: BigDecimal
          property :order_option_count, type: BigDecimal
          property :package_configuration_count, type: BigDecimal
          property :preset_configuration_count, type: BigDecimal
          property :question_count, type: BigDecimal
          property :question_reference_count, type: BigDecimal
        end
      end
    end
  end
end
