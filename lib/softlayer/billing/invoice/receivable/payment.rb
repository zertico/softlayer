module Softlayer
  module Billing
    class Invoice
      module Receivable
        class Payment < Softlayer::Model
          attr_accessor :amount
          attr_accessor :create_date
          attr_accessor :invoice_id
          attr_accessor :type_code
          attr_accessor :account
          attr_accessor :credit_card_last_four_digits
          attr_accessor :credit_card_request_id
          attr_accessor :credit_card_transaction
          attr_accessor :exchange_rate
          attr_accessor :invoice
          attr_accessor :paypal_transaction

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :amount, type: Float
            property :create_date, type: DateTime
            property :invoice_id, type: Integer
            property :type_code, type: String
            property :credit_card_last_four_digits, type: Integer
            property :credit_card_request_id, type: String
          end
        end
      end
    end
  end
end
