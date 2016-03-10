module Softlayer
  module User
    class Customer
      module External
        class Binding < Softlayer::User::External::Binding
          SERVICE = 'SoftLayer_User_Customer_External_Binding'
          autoload :Attribute, 'softlayer/user/customer/external/binding/attribute'
          autoload :Phone, 'softlayer/user/customer/external/binding/phone'
          autoload :Totp, 'softlayer/user/customer/external/binding/totp'
          autoload :Type, 'softlayer/user/customer/external/binding/type'
          autoload :Vendor, 'softlayer/user/customer/external/binding/vendor'
          autoload :Verisign, 'softlayer/user/customer/external/binding/verisign'
          attr_accessor :user

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
            request(:get_object, Softlayer::User::Customer::External::Binding)
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

          class Representer < Softlayer::User::External::Binding::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
