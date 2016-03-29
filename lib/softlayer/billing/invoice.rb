module Softlayer
  module Billing
    class Invoice < Softlayer::Entity
      SERVICE = 'SoftLayer_Billing_Invoice'
      autoload :Item, 'softlayer/billing/invoice/item'
      autoload :Next, 'softlayer/billing/invoice/next'
      autoload :Receivable, 'softlayer/billing/invoice/receivable'
      autoload :Tax, 'softlayer/billing/invoice/tax'
      attr_accessor :account_id
      attr_accessor :address1
      attr_accessor :address2
      attr_accessor :city
      attr_accessor :claimed_tax_exempt_tx_flag
      attr_accessor :closed_date
      attr_accessor :company_name
      attr_accessor :country
      attr_accessor :create_date
      attr_accessor :documents_generated_flag
      attr_accessor :email
      attr_accessor :ending_balance
      attr_accessor :fax_phone
      attr_accessor :first_name
      attr_accessor :id
      attr_accessor :last_name
      attr_accessor :modify_date
      attr_accessor :office_phone
      attr_accessor :postal_code
      attr_accessor :purchase_order_number
      attr_accessor :starting_balance
      attr_accessor :state
      attr_accessor :status_code
      attr_accessor :tax_status_id
      attr_accessor :tax_type_id
      attr_accessor :type_code
      attr_accessor :invoice_top_level_item_count
      attr_accessor :item_count
      attr_accessor :payment_count
      attr_accessor :tax_info_history_count
      attr_accessor :account
      attr_accessor :amount
      attr_accessor :brand_at_invoice_creation
      attr_accessor :detailed_pdf_generated_flag
      attr_accessor :invoice_top_level_items
      attr_accessor :invoice_total_amount
      attr_accessor :invoice_total_one_time_amount
      attr_accessor :invoice_total_one_time_tax_amount
      attr_accessor :invoice_total_pre_tax_amount
      attr_accessor :invoice_total_recurring_amount
      attr_accessor :invoice_total_recurring_tax_amount
      attr_accessor :items
      attr_accessor :payment
      attr_accessor :payments
      attr_accessor :seller_registration
      attr_accessor :tax_info
      attr_accessor :tax_info_history
      attr_accessor :tax_message
      attr_accessor :tax_type

      def self.email_invoices(options = nil)
        message = {options: options}
        request(:email_invoices, nil, message)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def get_amount
        request(:get_amount, Float)
      end

      def get_brand_at_invoice_creation
        request(:get_brand_at_invoice_creation, Softlayer::Brand)
      end

      def get_detailed_pdf_generated_flag
        request(:get_detailed_pdf_generated_flag, Boolean)
      end

      def get_excel
        request(:get_excel, Softlayer::Base64Binary)
      end

      def get_invoice_top_level_items
        request(:get_invoice_top_level_items, Array[Softlayer::Billing::Invoice::Item])
      end

      def get_invoice_total_amount
        request(:get_invoice_total_amount, Float)
      end

      def get_invoice_total_one_time_amount
        request(:get_invoice_total_one_time_amount, Float)
      end

      def get_invoice_total_one_time_tax_amount
        request(:get_invoice_total_one_time_tax_amount, Float)
      end

      def get_invoice_total_pre_tax_amount
        request(:get_invoice_total_pre_tax_amount, Float)
      end

      def get_invoice_total_recurring_amount
        request(:get_invoice_total_recurring_amount, Float)
      end

      def get_invoice_total_recurring_tax_amount
        request(:get_invoice_total_recurring_tax_amount, Float)
      end

      def get_items
        request(:get_items, Array[Softlayer::Billing::Invoice::Item])
      end

      def get_object
        request(:get_object, Softlayer::Billing::Invoice)
      end

      def get_payment
        request(:get_payment, Float)
      end

      def get_payments
        request(:get_payments, Array[Softlayer::Billing::Invoice::Receivable::Payment])
      end

      def get_pdf
        request(:get_pdf, Softlayer::Base64Binary)
      end

      def get_pdf_detailed
        request(:get_pdf_detailed, Softlayer::Base64Binary)
      end

      def get_pdf_detailed_filename
        request(:get_pdf_detailed_filename, String)
      end

      def get_pdf_file_size
        request(:get_pdf_file_size, Integer)
      end

      def get_pdf_filename
        request(:get_pdf_filename, String)
      end

      def get_preliminary_excel
        request(:get_preliminary_excel, Softlayer::Base64Binary)
      end

      def get_preliminary_pdf
        request(:get_preliminary_pdf, Softlayer::Base64Binary)
      end

      def get_preliminary_pdf_detailed
        request(:get_preliminary_pdf_detailed, Softlayer::Base64Binary)
      end

      def get_seller_registration
        request(:get_seller_registration, String)
      end

      def get_tax_info
        request(:get_tax_info, Softlayer::Billing::Invoice::Tax::Info)
      end

      def get_tax_info_history
        request(:get_tax_info_history, Array[Softlayer::Billing::Invoice::Tax::Info])
      end

      def get_tax_message
        request(:get_tax_message, String)
      end

      def get_tax_type
        request(:get_tax_type, Softlayer::Billing::Invoice::Tax::Type)
      end

      def get_xls_filename
        request(:get_xls_filename, String)
      end

      def get_zero_fee_item_counts
        request(:get_zero_fee_item_counts, Array[Softlayer::Container::Product::Item::Category::ZeroFee::Count])
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :address1, type: String
        property :address2, type: String
        property :city, type: String
        property :claimed_tax_exempt_tx_flag, type: Boolean
        property :closed_date, type: DateTime
        property :company_name, type: String
        property :country, type: String
        property :create_date, type: DateTime
        property :documents_generated_flag, type: Boolean
        property :email, type: String
        property :ending_balance, type: Float
        property :fax_phone, type: String
        property :first_name, type: String
        property :id, type: Integer
        property :last_name, type: String
        property :modify_date, type: DateTime
        property :office_phone, type: String
        property :postal_code, type: String
        property :purchase_order_number, type: String
        property :starting_balance, type: Float
        property :state, type: String
        property :status_code, type: String
        property :tax_status_id, type: Integer
        property :tax_type_id, type: Integer
        property :type_code, type: String
        property :invoice_top_level_item_count, type: BigDecimal
        property :item_count, type: BigDecimal
        property :payment_count, type: BigDecimal
        property :tax_info_history_count, type: BigDecimal
        property :amount, type: Float
        property :detailed_pdf_generated_flag, type: Boolean
        property :invoice_total_amount, type: Float
        property :invoice_total_one_time_amount, type: Float
        property :invoice_total_one_time_tax_amount, type: Float
        property :invoice_total_pre_tax_amount, type: Float
        property :invoice_total_recurring_amount, type: Float
        property :invoice_total_recurring_tax_amount, type: Float
        property :payment, type: Float
        property :seller_registration, type: String
        property :tax_message, type: String
      end
    end
  end
end
