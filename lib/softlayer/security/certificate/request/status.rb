module Softlayer
  module Security
    class Certificate
      class Request
        class Status < Softlayer::Entity
          SERVICE = 'SoftLayer_Security_Certificate_Request_Status'
          attr_accessor :description
          attr_accessor :id
          attr_accessor :name

          def get_object
            request(:get_object, Softlayer::Security::Certificate::Request::Status)
          end

          def self.get_ssl_request_statuses
            request(:get_ssl_request_statuses, Array[Softlayer::Security::Certificate::Request::Status])
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :description, type: String
            property :id, type: Integer
            property :name, type: String
          end
        end
      end
    end
  end
end
