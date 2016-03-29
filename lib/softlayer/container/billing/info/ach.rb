module Softlayer
  module Container
    module Billing
      module Info
        class Ach < Softlayer::Entity
          attr_accessor :account_number
          attr_accessor :account_type
          attr_accessor :bank_transit_number
          attr_accessor :city
          attr_accessor :country
          attr_accessor :federal_tax_id
          attr_accessor :first_name
          attr_accessor :last_name
          attr_accessor :phone_number
          attr_accessor :postal_code
          attr_accessor :state
          attr_accessor :street1
          attr_accessor :street2

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :account_number, type: String
            property :account_type, type: String
            property :bank_transit_number, type: String
            property :city, type: String
            property :country, type: String
            property :federal_tax_id, type: String
            property :first_name, type: String
            property :last_name, type: String
            property :phone_number, type: String
            property :postal_code, type: String
            property :state, type: String
            property :street1, type: String
            property :street2, type: String
          end
        end
      end
    end
  end
end
