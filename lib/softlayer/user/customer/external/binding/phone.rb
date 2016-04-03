module Softlayer
  module User
    class Customer
      module External
        class Binding
          class Phone < Softlayer::User::Customer::External::Binding
            SERVICE = 'SoftLayer_User_Customer_External_Binding_Phone'
            attr_accessor :binding_status
            attr_accessor :pin_length

            # token
            def check_phone_validation_result(message)
              request(:check_phone_validation_result, Boolean, message)
            end

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

            def get_all_authentication_modes
              request(:get_all_authentication_modes, Array[String])
            end

            # authentication_mode_key_name
            def get_all_authentication_pin_modes(message)
              request(:get_all_authentication_pin_modes, Array[String], message)
            end

            def get_attributes
              request(:get_attributes, Array[Softlayer::User::External::Binding::Attribute])
            end

            def get_authentication_mode
              request(:get_authentication_mode, Softlayer::Container::User::Customer::External::Binding::Phone::Mode)
            end

            def get_billing_item
              request(:get_billing_item, Softlayer::Billing::Item)
            end

            def get_binding_status
              request(:get_binding_status, String)
            end

            def get_note
              request(:get_note, String)
            end

            def get_object
              request(:get_object, Softlayer::User::Customer::External::Binding::Phone)
            end

            def get_phone_app_activation_code
              request(:get_phone_app_activation_code, Array[Softlayer::User::External::Binding::Attribute])
            end

            def get_phone_data
              request(:get_phone_data, Array[Softlayer::Container::User::Data::Phone])
            end

            def get_pin_length
              request(:get_pin_length, String)
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

            # phone_data
            def request_phone_validation(message)
              request(:request_phone_validation, String, message)
            end

            # mode
            def update_authentication_mode(message)
              request(:update_authentication_mode, Boolean, message)
            end

            # text
            def update_note(message)
              request(:update_note, Boolean, message)
            end

            # phone_data
            def update_phone(message)
              request(:update_phone, Boolean, message)
            end

            class Representer < Softlayer::User::Customer::External::Binding::Representer
              include Representable::Hash
              include Representable::Coercion
              property :binding_status, type: String
              property :pin_length, type: String
            end
          end
        end
      end
    end
  end
end
