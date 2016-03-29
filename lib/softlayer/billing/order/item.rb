module Softlayer
  module Billing
    class Order
      class Item < Softlayer::Entity
        SERVICE = 'SoftLayer_Billing_Order_Item'
        autoload :Category, 'softlayer/billing/order/item/category'
        attr_accessor :category_code
        attr_accessor :description
        attr_accessor :domain_name
        attr_accessor :host_name
        attr_accessor :hourly_recurring_fee
        attr_accessor :id
        attr_accessor :item_id
        attr_accessor :item_price_id
        attr_accessor :labor_after_tax_amount
        attr_accessor :labor_fee
        attr_accessor :labor_fee_tax_rate
        attr_accessor :labor_tax_amount
        attr_accessor :one_time_after_tax_amount
        attr_accessor :one_time_fee
        attr_accessor :one_time_fee_tax_rate
        attr_accessor :one_time_tax_amount
        attr_accessor :parent_id
        attr_accessor :promo_code_id
        attr_accessor :quantity
        attr_accessor :recurring_after_tax_amount
        attr_accessor :recurring_fee
        attr_accessor :recurring_tax_amount
        attr_accessor :setup_after_tax_amount
        attr_accessor :setup_fee
        attr_accessor :setup_fee_deferral_months
        attr_accessor :setup_fee_tax_rate
        attr_accessor :setup_tax_amount
        attr_accessor :bundled_item_count
        attr_accessor :children_count
        attr_accessor :item_category_answer_count
        attr_accessor :next_order_children_count
        attr_accessor :storage_group_count
        attr_accessor :billing_item
        attr_accessor :bundled_items
        attr_accessor :category
        attr_accessor :children
        attr_accessor :global_identifier
        attr_accessor :hardware_generic_component
        attr_accessor :item
        attr_accessor :item_category_answers
        attr_accessor :item_price
        attr_accessor :location
        attr_accessor :next_order_children
        attr_accessor :old_billing_item
        attr_accessor :order
        attr_accessor :order_approval_date
        attr_accessor :package
        attr_accessor :parent
        attr_accessor :redundant_power_supply_count
        attr_accessor :software_description
        attr_accessor :storage_groups
        attr_accessor :total_recurring_amount
        attr_accessor :upgrade_item

        def get_billing_item
          request(:get_billing_item, Softlayer::Billing::Item)
        end

        def get_bundled_items
          request(:get_bundled_items, Array[Softlayer::Billing::Order::Item])
        end

        def get_category
          request(:get_category, Softlayer::Product::Item::Category)
        end

        def get_children
          request(:get_children, Array[Softlayer::Billing::Order::Item])
        end

        def get_global_identifier
          request(:get_global_identifier, String)
        end

        def get_hardware_generic_component
          request(:get_hardware_generic_component, Softlayer::Hardware::Component::Model::Generic)
        end

        def get_item
          request(:get_item, Softlayer::Product::Item)
        end

        def get_item_category_answers
          request(:get_item_category_answers, Array[Softlayer::Billing::Order::Item::Category::Answer])
        end

        def get_item_price
          request(:get_item_price, Softlayer::Product::Item::Price)
        end

        def get_location
          request(:get_location, Softlayer::Location)
        end

        def get_next_order_children
          request(:get_next_order_children, Array[Softlayer::Billing::Order::Item])
        end

        def get_object
          request(:get_object, Softlayer::Billing::Order::Item)
        end

        def get_old_billing_item
          request(:get_old_billing_item, Softlayer::Billing::Item)
        end

        def get_order
          request(:get_order, Softlayer::Billing::Order)
        end

        def get_order_approval_date
          request(:get_order_approval_date, DateTime)
        end

        def get_package
          request(:get_package, Softlayer::Product::Package)
        end

        def get_parent
          request(:get_parent, Softlayer::Billing::Order::Item)
        end

        def get_redundant_power_supply_count
          request(:get_redundant_power_supply_count, Integer)
        end

        def get_software_description
          request(:get_software_description, Softlayer::Software::Description)
        end

        def get_storage_groups
          request(:get_storage_groups, Array[Softlayer::Configuration::Storage::Group::Order])
        end

        def get_total_recurring_amount
          request(:get_total_recurring_amount, Float)
        end

        def get_upgrade_item
          request(:get_upgrade_item, Softlayer::Product::Item)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :category_code, type: String
          property :description, type: String
          property :domain_name, type: String
          property :host_name, type: String
          property :hourly_recurring_fee, type: Float
          property :id, type: Integer
          property :item_id, type: Integer
          property :item_price_id, type: Float
          property :labor_after_tax_amount, type: Float
          property :labor_fee, type: Float
          property :labor_fee_tax_rate, type: Float
          property :labor_tax_amount, type: Float
          property :one_time_after_tax_amount, type: Float
          property :one_time_fee, type: Float
          property :one_time_fee_tax_rate, type: Float
          property :one_time_tax_amount, type: Float
          property :parent_id, type: Integer
          property :promo_code_id, type: Integer
          property :quantity, type: Integer
          property :recurring_after_tax_amount, type: Float
          property :recurring_fee, type: Float
          property :recurring_tax_amount, type: Float
          property :setup_after_tax_amount, type: Float
          property :setup_fee, type: Float
          property :setup_fee_deferral_months, type: Integer
          property :setup_fee_tax_rate, type: Float
          property :setup_tax_amount, type: Float
          property :bundled_item_count, type: BigDecimal
          property :children_count, type: BigDecimal
          property :item_category_answer_count, type: BigDecimal
          property :next_order_children_count, type: BigDecimal
          property :storage_group_count, type: BigDecimal
          property :global_identifier, type: String
          property :order_approval_date, type: DateTime
          property :redundant_power_supply_count, type: Integer
          property :total_recurring_amount, type: Float
        end
      end
    end
  end
end
