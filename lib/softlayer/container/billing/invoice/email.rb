module Softlayer
  module Container
    module Billing
      module Invoice
        class Email < Softlayer::Model
          attr_accessor :excel_invoice_ids
          attr_accessor :pdf_detailed_invoice_ids
          attr_accessor :pdf_invoice_ids
          attr_accessor :type

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :type, type: String
          end
        end
      end
    end
  end
end
