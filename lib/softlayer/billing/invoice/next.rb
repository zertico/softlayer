module Softlayer
  module Billing
    class Invoice
      class Next < Softlayer::Entity
        SERVICE = 'SoftLayer_Billing_Invoice_Next'

        def get_excel(document_create_date = nil)
          message = {document_create_date: document_create_date}
          request(:get_excel, Softlayer::Base64Binary, message)
        end

        def get_pdf(document_create_date = nil)
          message = {document_create_date: document_create_date}
          request(:get_pdf, Softlayer::Base64Binary, message)
        end

        def get_pdf_detailed(document_create_date = nil)
          message = {document_create_date: document_create_date}
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
