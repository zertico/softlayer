module Softlayer
  class Account
    module Authentication
      class Attribute
        class Type < Softlayer::Entity
          SERVICE = 'SoftLayer_Account_Authentication_Attribute_Type'
          attr_accessor :description
          attr_accessor :id
          attr_accessor :key_name
          attr_accessor :name
          attr_accessor :value_example

          def self.get_all_objects
            request(:get_all_objects, Array[Softlayer::Account::Attribute::Type])
          end

          def get_object
            request(:get_object, Softlayer::Account::Authentication::Attribute::Type)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :description, type: String
            property :id, type: Integer
            property :key_name, type: String
            property :name, type: String
            property :value_example, type: String
          end
        end
      end
    end
  end
end
