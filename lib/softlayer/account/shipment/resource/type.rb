module Softlayer
  class Account
    class Shipment
      module Resource
        class Type < Softlayer::Model
          SERVICE = 'SoftLayer_Account_Shipment_Resource_Type'

          def get_object
            request(:get_object, Softlayer::Account::Shipment::Resource::Type)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
