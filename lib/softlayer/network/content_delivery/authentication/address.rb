module Softlayer
  class Network
    module ContentDelivery
      module Authentication
        class Address < Softlayer::Entity
          SERVICE = 'SoftLayer_Network_ContentDelivery_Authentication_Address'
          attr_accessor :access_type
          attr_accessor :cdn_account_id
          attr_accessor :create_date
          attr_accessor :id
          attr_accessor :ip_address
          attr_accessor :modify_date
          attr_accessor :name
          attr_accessor :priority
          attr_accessor :user_id

          # template_object
          def self.create_object(message)
            request(:create_object, Softlayer::Network::ContentDelivery::Authentication::Address, message)
          end

          def delete_object
            request(:delete_object, Boolean)
          end

          # template_object
          def edit_object(message)
            request(:edit_object, Boolean, message)
          end

          def get_object
            request(:get_object, Softlayer::Network::ContentDelivery::Authentication::Address)
          end

          # cdn_account_id
          # template_objects
          def self.rearrange_authentication_ip(message)
            request(:rearrange_authentication_ip, Boolean, message)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :access_type, type: String
            property :cdn_account_id, type: Integer
            property :create_date, type: DateTime
            property :id, type: Integer
            property :ip_address, type: String
            property :modify_date, type: DateTime
            property :name, type: String
            property :priority, type: Integer
            property :user_id, type: Integer
          end
        end
      end
    end
  end
end
