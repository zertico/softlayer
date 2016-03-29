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

          def self.create_object(template_object = nil)
            message = {template_object: template_object}
            request(:create_object, Softlayer::Network::ContentDelivery::Authentication::Token, message)
          end

          def self.get_all_managed_tokens(cdn_account_id = nil)
            message = {cdn_account_id: cdn_account_id}
            request(:get_all_managed_tokens, Array[Softlayer::Network::ContentDelivery::Authentication::Token], message)
          end

          def get_object
            request(:get_object, Softlayer::Network::ContentDelivery::Authentication::Token)
          end

          def self.get_timed_token(cdn_account_id = nil, token_life = nil, client_ip = nil, referrer = nil, media_type = nil)
            message = {cdn_account_id: cdn_account_id, token_life: token_life, client_ip: client_ip, referrer: referrer, media_type: media_type}
            request(:get_timed_token, String, message)
          end

          def self.revoke_all_managed_tokens(cdn_account_id = nil)
            message = {cdn_account_id: cdn_account_id}
            request(:revoke_all_managed_tokens, Boolean, message)
          end

          def self.revoke_all_tokens(cdn_account_id = nil, media_type = nil)
            message = {cdn_account_id: cdn_account_id, media_type: media_type}
            request(:revoke_all_tokens, Boolean, message)
          end

          def self.revoke_managed_token(cdn_account_id = nil, token = nil)
            message = {cdn_account_id: cdn_account_id, token: token}
            request(:revoke_managed_token, Boolean, message)
          end

          def self.revoke_managed_tokens(template_objects = nil)
            message = {template_objects: template_objects}
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
