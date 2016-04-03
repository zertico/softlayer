module Softlayer
  module Billing
    class Invoice
      class Next < Softlayer::Entity
        SERVICE = 'SoftLayer_Billing_Invoice_Next'

        # document_create_date
        def get_excel(message)
          request(:get_excel, Softlayer::Base64Binary, message)
        end

        # document_create_date
        def get_pdf(message)
          request(:get_pdf, Softlayer::Base64Binary, message)
        end

        # document_create_date
        def get_pdf_detailed(message)
          request(:get_pdf_detailed, Softlayer::Base64Binary, message)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
