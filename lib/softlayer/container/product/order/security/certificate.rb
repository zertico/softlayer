module Softlayer
  module Container
    module Product
      class Order
        module Security
          class Certificate < Softlayer::Container::Product::Order
            attr_accessor :administrative_contact
            attr_accessor :billing_contact
            attr_accessor :certificate_signing_request
            attr_accessor :order_approver_email_address
            attr_accessor :organization_information
            attr_accessor :renewal_flag
            attr_accessor :server_count
            attr_accessor :server_type
            attr_accessor :technical_contact
            attr_accessor :validity_months

            class Representer < Softlayer::Container::Product::Order::Representer
              include Representable::Hash
              include Representable::Coercion
              property :certificate_signing_request, type: String
              property :order_approver_email_address, type: String
              property :renewal_flag, type: Boolean
              property :server_count, type: Integer
              property :server_type, type: String
              property :validity_months, type: Integer
            end
          end
        end
      end
    end
  end
end
