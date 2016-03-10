module Softlayer
  module User
    class Customer
      module External
        class Binding
          class Totp < Softlayer::User::Customer::External::Binding
            SERVICE = 'SoftLayer_User_Customer_External_Binding_Totp'

            def activate
              request(:activate, Boolean)
            end

            def deactivate
              request(:deactivate, Boolean)
            end

            def delete_object
              request(:delete_object, Boolean)
            end

            def disable(reason = nil)
              message = {reason: reason}
              request(:disable, Boolean, message)
            end

            def enable
              request(:enable, Boolean)
            end

            def self.generate_secret_key
              request(:generate_secret_key, String)
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
              request(:get_object, Softlayer::User::Customer::External::Binding::Totp)
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

            def update_note(text = nil)
              message = {text: text}
              request(:update_note, Boolean, message)
            end

            class Representer < Softlayer::User::Customer::External::Binding::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
