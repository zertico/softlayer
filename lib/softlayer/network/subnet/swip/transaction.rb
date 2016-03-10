module Softlayer
  class Network
    class Subnet
      module Swip
        class Transaction < Softlayer::Model
          SERVICE = 'SoftLayer_Network_Subnet_Swip_Transaction'
          attr_accessor :id
          attr_accessor :status_name
          attr_accessor :subnet_id
          attr_accessor :account
          attr_accessor :subnet

          def self.find_my_transactions
            request(:find_my_transactions, Array[Softlayer::Network::Subnet::Swip::Transaction])
          end

          def get_account
            request(:get_account, Softlayer::Account)
          end

          def get_object
            request(:get_object, Softlayer::Network::Subnet::Swip::Transaction)
          end

          def get_subnet
            request(:get_subnet, Softlayer::Network::Subnet)
          end

          def self.remove_all_subnet_swips
            request(:remove_all_subnet_swips, Integer)
          end

          def remove_swip_data
            request(:remove_swip_data, Boolean)
          end

          def resend_swip_data
            request(:resend_swip_data, Boolean)
          end

          def self.swip_all_subnets
            request(:swip_all_subnets, Integer)
          end

          def self.update_all_subnet_swips
            request(:update_all_subnet_swips, Integer)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :status_name, type: String
            property :subnet_id, type: Integer
          end
        end
      end
    end
  end
end
