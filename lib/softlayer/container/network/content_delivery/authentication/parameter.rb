module Softlayer
  module Container
    module Network
      module ContentDelivery
        module Authentication
          class Parameter < Softlayer::Model
            attr_accessor :cdn_account_name
            attr_accessor :client_ip
            attr_accessor :referrer
            attr_accessor :source_url
            attr_accessor :token

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :cdn_account_name, type: String
              property :client_ip, type: String
              property :referrer, type: String
              property :source_url, type: String
              property :token, type: String
            end
          end
        end
      end
    end
  end
end
