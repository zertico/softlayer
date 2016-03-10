module Softlayer
  module User
    class Customer
      module External
        class Binding
          class Vendor < Softlayer::User::External::Binding::Vendor
            SERVICE = 'SoftLayer_User_Customer_External_Binding_Vendor'

            def self.get_all_objects
              request(:get_all_objects, Array[Softlayer::User::External::Binding::Vendor])
            end

            def get_object
              request(:get_object, Softlayer::User::Customer::External::Binding::Vendor)
            end

            class Representer < Softlayer::User::External::Binding::Vendor::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
