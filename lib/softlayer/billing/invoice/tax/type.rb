module Softlayer
  module Billing
    class Invoice
      module Tax
        class Type < Softlayer::Model
          SERVICE = 'SoftLayer_Billing_Invoice_Tax_Type'
          attr_accessor :id
          attr_accessor :key_name
          attr_accessor :name

          def self.get_all_objects
            request(:get_all_objects, Array[Softlayer::Billing::Invoice::Tax::Type])
          end

          def get_object
            request(:get_object, Softlayer::Billing::Invoice::Tax::Type)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :key_name, type: String
            property :name, type: String
          end
        end
      end
    end
  end
end
