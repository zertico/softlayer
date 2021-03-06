module Softlayer
  class Account
    class Note
      class Type < Softlayer::Entity
        SERVICE = 'SoftLayer_Account_Note_Type'
        attr_accessor :brand_id
        attr_accessor :create_date
        attr_accessor :description
        attr_accessor :id
        attr_accessor :key_name
        attr_accessor :modify_date
        attr_accessor :name
        attr_accessor :value_expression

        # template_object
        def self.create_object(message)
          request(:create_object, Softlayer::Account::Note::Type, message)
        end

        def delete_object
          request(:delete_object, Boolean)
        end

        # template_object
        def edit_object(message)
          request(:edit_object, Boolean, message)
        end

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::Account::Note::Type])
        end

        def get_object
          request(:get_object, Softlayer::Account::Note::Type)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :brand_id, type: Integer
          property :create_date, type: DateTime
          property :description, type: String
          property :id, type: Integer
          property :key_name, type: String
          property :modify_date, type: DateTime
          property :name, type: String
          property :value_expression, type: String
        end
      end
    end
  end
end
