module Softlayer
  module Software
    class AccountLicense < Softlayer::Entity
      attr_accessor :account_id
      attr_accessor :capacity
      attr_accessor :key
      attr_accessor :units
      attr_accessor :account
      attr_accessor :billing_item
      attr_accessor :software_description

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :capacity, type: String
        property :key, type: String
        property :units, type: String
      end
    end
  end
end
