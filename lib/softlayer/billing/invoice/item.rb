module Softlayer
  module Billing
    class Invoice
      class Item < Softlayer::Model
        SERVICE = 'SoftLayer_Billing_Invoice_Item'
        autoload :Hardware, 'softlayer/billing/invoice/item/hardware'
        autoload :Tax, 'softlayer/billing/invoice/item/tax'
        attr_accessor :associated_invoice_item_id
        attr_accessor :billing_item_id
        attr_accessor :category_code
        attr_accessor :create_date
        attr_accessor :description
        attr_accessor :domain_name
        attr_accessor :host_name
        attr_accessor :hourly_recurring_fee
        attr_accessor :id
        attr_accessor :invoice_id
        attr_accessor :labor_after_tax_amount
        attr_accessor :labor_fee
        attr_accessor :labor_fee_tax_rate
        attr_accessor :labor_tax_amount
        attr_accessor :notes
        attr_accessor :one_time_after_tax_amount
        attr_accessor :one_time_fee
        attr_accessor :one_time_fee_tax_rate
        attr_accessor :one_time_tax_amount
        attr_accessor :parent_id
        attr_accessor :product_item_id
        attr_accessor :recurring_after_tax_amount
        attr_accessor :recurring_fee
        attr_accessor :recurring_fee_tax_rate
        attr_accessor :recurring_tax_amount
        attr_accessor :resource_table_id
        attr_accessor :setup_after_tax_amount
        attr_accessor :setup_fee
        attr_accessor :setup_fee_tax_rate
        attr_accessor :setup_tax_amount
        attr_accessor :associated_children_count
        attr_accessor :children_count
        attr_accessor :filtered_associated_children_count
        attr_accessor :non_zero_associated_children_count
        attr_accessor :associated_children
        attr_accessor :associated_invoice_item
        attr_accessor :billing_item
        attr_accessor :category
        attr_accessor :children
        attr_accessor :filtered_associated_children
        attr_accessor :invoice
        attr_accessor :location
        attr_accessor :non_zero_associated_children
        attr_accessor :parent
        attr_accessor :product
        attr_accessor :total_one_time_amount
        attr_accessor :total_one_time_tax_amount
        attr_accessor :total_recurring_amount
        attr_accessor :total_recurring_tax_amount

        def get_associated_children
          request(:get_associated_children, Array[Softlayer::Billing::Invoice::Item])
        end

        def get_associated_invoice_item
          request(:get_associated_invoice_item, Softlayer::Billing::Invoice::Item)
        end

        def get_billing_item
          request(:get_billing_item, Softlayer::Billing::Item)
        end

        def get_category
          request(:get_category, Softlayer::Product::Item::Category)
        end

        def get_children
          request(:get_children, Array[Softlayer::Billing::Invoice::Item])
        end

        def get_filtered_associated_children
          request(:get_filtered_associated_children, Array[Softlayer::Billing::Invoice::Item])
        end

        def get_invoice
          request(:get_invoice, Softlayer::Billing::Invoice)
        end

        def get_location
          request(:get_location, Softlayer::Location)
        end

        def get_non_zero_associated_children
          request(:get_non_zero_associated_children, Array[Softlayer::Billing::Invoice::Item])
        end

        def get_object
          request(:get_object, Softlayer::Billing::Invoice::Item)
        end

        def get_parent
          request(:get_parent, Softlayer::Billing::Invoice::Item)
        end

        def get_product
          request(:get_product, Softlayer::Product::Item)
        end

        def get_total_one_time_amount
          request(:get_total_one_time_amount, Float)
        end

        def get_total_one_time_tax_amount
          request(:get_total_one_time_tax_amount, Float)
        end

        def get_total_recurring_amount
          request(:get_total_recurring_amount, Float)
        end

        def get_total_recurring_tax_amount
          request(:get_total_recurring_tax_amount, Float)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :associated_invoice_item_id, type: Integer
          property :billing_item_id, type: Integer
          property :category_code, type: String
          property :create_date, type: DateTime
          property :description, type: String
          property :domain_name, type: String
          property :host_name, type: String
          property :hourly_recurring_fee, type: Float
          property :id, type: Integer
          property :invoice_id, type: Integer
          property :labor_after_tax_amount, type: Float
          property :labor_fee, type: Float
          property :labor_fee_tax_rate, type: Float
          property :labor_tax_amount, type: Float
          property :notes, type: String
          property :one_time_after_tax_amount, type: Float
          property :one_time_fee, type: Float
          property :one_time_fee_tax_rate, type: Float
          property :one_time_tax_amount, type: Float
          property :parent_id, type: Integer
          property :product_item_id, type: Integer
          property :recurring_after_tax_amount, type: Float
          property :recurring_fee, type: Float
          property :recurring_fee_tax_rate, type: Float
          property :recurring_tax_amount, type: Float
          property :resource_table_id, type: Integer
          property :setup_after_tax_amount, type: Float
          property :setup_fee, type: Float
          property :setup_fee_tax_rate, type: Float
          property :setup_tax_amount, type: Float
          property :associated_children_count, type: BigDecimal
          property :children_count, type: BigDecimal
          property :filtered_associated_children_count, type: BigDecimal
          property :non_zero_associated_children_count, type: BigDecimal
          property :total_one_time_amount, type: Float
          property :total_one_time_tax_amount, type: Float
          property :total_recurring_amount, type: Float
          property :total_recurring_tax_amount, type: Float
        end
      end
    end
  end
end
