module Softlayer
  class Network
    class Subnet
      class IpAddress
        class Global < Softlayer::Model
          SERVICE = 'SoftLayer_Network_Subnet_IpAddress_Global'
          attr_accessor :description
          attr_accessor :destination_ip_address_id
          attr_accessor :id
          attr_accessor :ip_address_id
          attr_accessor :type_id
          attr_accessor :account
          attr_accessor :active_transaction
          attr_accessor :billing_item
          attr_accessor :destination_ip_address
          attr_accessor :ip_address

          def get_account
            request(:get_account, Softlayer::Account)
          end

          def get_active_transaction
            request(:get_active_transaction, Softlayer::Provisioning::Version1::Transaction)
          end

          def get_billing_item
            request(:get_billing_item, Softlayer::Billing::Item::Network::Subnet::IpAddress::Global)
          end

          def get_destination_ip_address
            request(:get_destination_ip_address, Softlayer::Network::Subnet::IpAddress)
          end

          def get_ip_address
            request(:get_ip_address, Softlayer::Network::Subnet::IpAddress)
          end

          def get_object
            request(:get_object, Softlayer::Network::Subnet::IpAddress::Global)
          end

          def route(new_end_point_ip_address = nil)
            message = {new_end_point_ip_address: new_end_point_ip_address}
            request(:route, Softlayer::Provisioning::Version1::Transaction, message)
          end

          def unroute
            request(:unroute, Softlayer::Provisioning::Version1::Transaction)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :description, type: Integer
            property :destination_ip_address_id, type: Integer
            property :id, type: Integer
            property :ip_address_id, type: Integer
            property :type_id, type: Integer
          end
        end
      end
    end
  end
end
