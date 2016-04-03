module Softlayer
  class Network
    module Service
      module Vpn
        class Overrides < Softlayer::Entity
          SERVICE = 'SoftLayer_Network_Service_Vpn_Overrides'
          attr_accessor :id
          attr_accessor :subnet_id
          attr_accessor :user_id
          attr_accessor :subnet
          attr_accessor :user

          # template_objects
          def self.create_objects(message)
            request(:create_objects, Boolean, message)
          end

          def delete_object
            request(:delete_object, Boolean)
          end

          # template_objects
          def self.delete_objects(message)
            request(:delete_objects, Boolean, message)
          end

          def get_object
            request(:get_object, Softlayer::Network::Service::Vpn::Overrides)
          end

          def get_subnet
            request(:get_subnet, Softlayer::Network::Subnet)
          end

          def get_user
            request(:get_user, Softlayer::User::Customer)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :subnet_id, type: Integer
            property :user_id, type: Integer
          end
        end
      end
    end
  end
end
