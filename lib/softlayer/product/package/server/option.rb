module Softlayer
  module Product
    class Package
      class Server
        class Option < Softlayer::Model
          SERVICE = 'SoftLayer_Product_Package_Server_Option'
          attr_accessor :catalog_id
          attr_accessor :description
          attr_accessor :id
          attr_accessor :type
          attr_accessor :value

          def self.get_all_options
            request(:get_all_options, Array[Softlayer::Product::Package::Server::Option])
          end

          def get_object
            request(:get_object, Softlayer::Product::Package::Server::Option)
          end

          def self.get_options(type = nil)
            message = {type: type}
            request(:get_options, Array[Softlayer::Product::Package::Server::Option], message)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :catalog_id, type: Integer
            property :description, type: String
            property :id, type: Integer
            property :type, type: String
            property :value, type: String
          end
        end
      end
    end
  end
end
