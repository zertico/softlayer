module Softlayer
  module Billing
    class Invoice
      module Tax
        class Status < Softlayer::Entity
          SERVICE = 'SoftLayer_Billing_Invoice_Tax_Status'
          attr_accessor :create_date
          attr_accessor :id
          attr_accessor :key_name
          attr_accessor :modify_date
          attr_accessor :name

          def self.get_all_objects
            request(:get_all_objects, Array[Softlayer::Billing::Invoice::Tax::Status])
          end

          def get_object
            request(:get_object, Softlayer::Billing::Invoice::Tax::Status)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :create_date, type: DateTime
            property :id, type: Integer
            property :key_name, type: String
            property :modify_date, type: DateTime
            property :name, type: String
          end
        end
      end
    end
  end
end
