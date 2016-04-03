module Softlayer
  module User
    module External
      class Binding < Softlayer::Entity
        SERVICE = 'SoftLayer_User_External_Binding'
        autoload :Attribute, 'softlayer/user/external/binding/attribute'
        autoload :Type, 'softlayer/user/external/binding/type'
        autoload :Vendor, 'softlayer/user/external/binding/vendor'
        attr_accessor :active
        attr_accessor :create_date
        attr_accessor :external_id
        attr_accessor :id
        attr_accessor :password
        attr_accessor :type_id
        attr_accessor :user_id
        attr_accessor :vendor_id
        attr_accessor :attribute_count
        attr_accessor :attributes
        attr_accessor :billing_item
        attr_accessor :note
        attr_accessor :type
        attr_accessor :vendor

        def delete_object
          request(:delete_object, Boolean)
        end

        def get_attributes
          request(:get_attributes, Array[Softlayer::User::External::Binding::Attribute])
        end

        def get_billing_item
          request(:get_billing_item, Softlayer::Billing::Item)
        end

        def get_note
          request(:get_note, String)
        end

        def get_object
          request(:get_object, Softlayer::User::External::Binding)
        end

        def get_type
          request(:get_type, Softlayer::User::External::Binding::Type)
        end

        def get_vendor
          request(:get_vendor, Softlayer::User::External::Binding::Vendor)
        end

        # text
        def update_note(message)
          request(:update_note, Boolean, message)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :active, type: Boolean
          property :create_date, type: DateTime
          property :external_id, type: String
          property :id, type: Integer
          property :password, type: String
          property :type_id, type: Integer
          property :user_id, type: Integer
          property :vendor_id, type: Integer
          property :attribute_count, type: BigDecimal
          property :note, type: String
        end
      end
    end
  end
end
