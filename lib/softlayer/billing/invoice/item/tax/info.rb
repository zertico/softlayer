module Softlayer
  module Billing
    class Invoice
      class Item
        module Tax
          class Info < Softlayer::Entity
            attr_accessor :create_date
            attr_accessor :description
            attr_accessor :effective_tax_rate
            attr_accessor :exempt_amount
            attr_accessor :fee_property
            attr_accessor :id
            attr_accessor :invoice_item_id
            attr_accessor :invoice_tax_info_id
            attr_accessor :modify_date
            attr_accessor :non_taxable_basis
            attr_accessor :reported_flag
            attr_accessor :seller_registration
            attr_accessor :tax_amount
            attr_accessor :tax_amount_to_currency
            attr_accessor :tax_rate
            attr_accessor :taxable_basis
            attr_accessor :to_currency_id
            attr_accessor :invoice_item
            attr_accessor :invoice_tax_info
            attr_accessor :to_currency

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :create_date, type: DateTime
              property :description, type: String
              property :effective_tax_rate, type: Float
              property :exempt_amount, type: Float
              property :fee_property, type: String
              property :id, type: Integer
              property :invoice_item_id, type: Integer
              property :invoice_tax_info_id, type: Integer
              property :modify_date, type: DateTime
              property :non_taxable_basis, type: Float
              property :reported_flag, type: Boolean
              property :seller_registration, type: String
              property :tax_amount, type: Float
              property :tax_amount_to_currency, type: Float
              property :tax_rate, type: Float
              property :taxable_basis, type: Float
              property :to_currency_id, type: Integer
            end
          end
        end
      end
    end
  end
end
