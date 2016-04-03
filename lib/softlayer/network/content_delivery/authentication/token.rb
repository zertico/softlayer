module Softlayer
  class Network
    module ContentDelivery
      module Authentication
        class Token < Softlayer::Entity
          SERVICE = 'SoftLayer_Network_ContentDelivery_Authentication_Token'
          attr_accessor :cdn_account_id
          attr_accessor :client_ip
          attr_accessor :create_date
          attr_accessor :name
          attr_accessor :referrer
          attr_accessor :token

          # template_object
          def self.create_object(message)
            request(:create_object, Softlayer::Network::ContentDelivery::Authentication::Token, message)
          end

          # cdn_account_id
          def self.get_all_managed_tokens(message)
            request(:get_all_managed_tokens, Array[Softlayer::Network::ContentDelivery::Authentication::Token], message)
          end

          def get_object
            request(:get_object, Softlayer::Network::ContentDelivery::Authentication::Token)
          end

          # cdn_account_id
          # token_life
          # client_ip
          # referrer
          # media_type
          def self.get_timed_token(message)
            request(:get_timed_token, String, message)
          end

          # cdn_account_id
          def self.revoke_all_managed_tokens(message)
            request(:revoke_all_managed_tokens, Boolean, message)
          end

          # cdn_account_id
          # media_type
          def self.revoke_all_tokens(message)
            request(:revoke_all_tokens, Boolean, message)
          end

          # cdn_account_id
          # token
          def self.revoke_managed_token(message)
            request(:revoke_managed_token, Boolean, message)
          end

          # template_objects
          def self.revoke_managed_tokens(message)
            request(:revoke_managed_tokens, Boolean, message)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :cdn_account_id, type: Integer
            property :client_ip, type: String
            property :create_date, type: DateTime
            property :name, type: String
            property :referrer, type: String
            property :token, type: String
          end
        end
      end
    end
  end
end
