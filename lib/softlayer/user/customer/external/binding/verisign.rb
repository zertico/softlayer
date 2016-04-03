module Softlayer
  module User
    class Customer
      module External
        class Binding
          class Verisign < Softlayer::User::Customer::External::Binding
            SERVICE = 'SoftLayer_User_Customer_External_Binding_Verisign'
            attr_accessor :credential_expiration_date
            attr_accessor :credential_last_update_date
            attr_accessor :credential_state
            attr_accessor :credential_type

            def delete_object
              request(:delete_object, Boolean)
            end

            # reason
            def disable(message)
              request(:disable, Boolean, message)
            end

            def enable
              request(:enable, Boolean)
            end

            def self.get_activation_code_for_mobile_client
              request(:get_activation_code_for_mobile_client, String)
            end

            def get_attributes
              request(:get_attributes, Array[Softlayer::User::External::Binding::Attribute])
            end

            def get_billing_item
              request(:get_billing_item, Softlayer::Billing::Item)
            end

            def get_credential_expiration_date
              request(:get_credential_expiration_date, String)
            end

            def get_credential_last_update_date
              request(:get_credential_last_update_date, String)
            end

            def get_credential_state
              request(:get_credential_state, String)
            end

            def get_credential_type
              request(:get_credential_type, String)
            end

            def get_note
              request(:get_note, String)
            end

            def get_object
              request(:get_object, Softlayer::User::Customer::External::Binding::Verisign)
            end

            def get_type
              request(:get_type, Softlayer::User::External::Binding::Type)
            end

            def get_user
              request(:get_user, Softlayer::User::Customer)
            end

            def get_vendor
              request(:get_vendor, Softlayer::User::External::Binding::Vendor)
            end

            # security_code
            def unlock(message)
              request(:unlock, Boolean, message)
            end

            # text
            def update_note(message)
              request(:update_note, Boolean, message)
            end

            # user_id
            # external_id
            def self.validate_credential_id(message)
              request(:validate_credential_id, Boolean, message)
            end

            class Representer < Softlayer::User::Customer::External::Binding::Representer
              include Representable::Hash
              include Representable::Coercion
              property :credential_expiration_date, type: String
              property :credential_last_update_date, type: String
              property :credential_state, type: String
              property :credential_type, type: String
            end
          end
        end
      end
    end
  end
end
