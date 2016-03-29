module Softlayer
  module Billing
    class Invoice
      module Tax
        class Info < Softlayer::Entity
          attr_accessor :create_date
          attr_accessor :currency_id
          attr_accessor :id
          attr_accessor :invoice_id
          attr_accessor :modify_date
          attr_accessor :reported_flag
          attr_accessor :item_count
          attr_accessor :currency
          attr_accessor :functional_currency
          attr_accessor :invoice
          attr_accessor :item_with_currency_info
          attr_accessor :items
          attr_accessor :total_tax_amount_to_currency

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :create_date, type: DateTime
            property :currency_id, type: Integer
            property :id, type: Integer
            property :invoice_id, type: Integer
            property :modify_date, type: DateTime
            property :reported_flag, type: Boolean
            property :item_count, type: BigDecimal
            property :total_tax_amount_to_currency, type: Float
          end
        end
      end
    end
  end
end
