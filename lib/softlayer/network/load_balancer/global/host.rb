module Softlayer
  class Network
    module LoadBalancer
      module Global
        class Host < Softlayer::Entity
          SERVICE = 'SoftLayer_Network_LoadBalancer_Global_Host'
          attr_accessor :destination_ip
          attr_accessor :destination_port
          attr_accessor :enabled
          attr_accessor :health_check
          attr_accessor :hits
          attr_accessor :id
          attr_accessor :load_balance_order
          attr_accessor :location
          attr_accessor :status
          attr_accessor :weight
          attr_accessor :load_balancer_account

          def delete_object
            request(:delete_object, Boolean)
          end

          def get_load_balancer_account
            request(:get_load_balancer_account, Softlayer::Network::LoadBalancer::Global::Account)
          end

          def get_object
            request(:get_object, Softlayer::Network::LoadBalancer::Global::Host)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :destination_ip, type: String
            property :destination_port, type: Integer
            property :enabled, type: Integer
            property :health_check, type: String
            property :hits, type: Float
            property :id, type: Integer
            property :load_balance_order, type: Integer
            property :location, type: String
            property :status, type: String
            property :weight, type: Integer
          end
        end
      end
    end
  end
end
