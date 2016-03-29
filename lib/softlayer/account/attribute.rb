module Softlayer
  class Account
    class Attribute < Softlayer::Entity
      autoload :Type, 'softlayer/account/attribute/type'
      attr_accessor :account_attribute_type_id
      attr_accessor :account_id
      attr_accessor :id
      attr_accessor :value
      attr_accessor :account
      attr_accessor :account_attribute_type

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :account_attribute_type_id, type: Integer
        property :account_id, type: Integer
        property :id, type: Integer
        property :value, type: String
      end
    end
  end
end
