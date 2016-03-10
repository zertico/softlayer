module Softlayer
  module Billing
    class Info
      class Ach < Softlayer::Model
        attr_accessor :account_id
        attr_accessor :account_number
        attr_accessor :account_type
        attr_accessor :bank_transit_number
        attr_accessor :city
        attr_accessor :country
        attr_accessor :first_name
        attr_accessor :id
        attr_accessor :last_name
        attr_accessor :phone_number
        attr_accessor :postalcode
        attr_accessor :state
        attr_accessor :status
        attr_accessor :street1
        attr_accessor :street2
        attr_accessor :verified_date
        attr_accessor :account

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :account_id, type: Integer
          property :account_number, type: String
          property :account_type, type: String
          property :bank_transit_number, type: String
          property :city, type: String
          property :country, type: String
          property :first_name, type: String
          property :id, type: Integer
          property :last_name, type: String
          property :phone_number, type: String
          property :postalcode, type: String
          property :state, type: String
          property :status, type: String
          property :street1, type: String
          property :street2, type: String
          property :verified_date, type: DateTime
        end
      end
    end
  end
end
