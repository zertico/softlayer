module Softlayer
  module Security
    class Certificate
      class Request
        class ServerType < Softlayer::Model
          SERVICE = 'SoftLayer_Security_Certificate_Request_ServerType'
          attr_accessor :description
          attr_accessor :id
          attr_accessor :name
          attr_accessor :value

          def self.get_all_objects
            request(:get_all_objects, Array[Softlayer::Security::Certificate::Request])
          end

          def get_object
            request(:get_object, Softlayer::Security::Certificate::Request::ServerType)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :description, type: String
            property :id, type: Integer
            property :name, type: String
            property :value, type: Integer
          end
        end
      end
    end
  end
end
