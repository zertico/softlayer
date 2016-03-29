module Softlayer
  module Container
    module Network
      module Service
        module Resource
          module ObjectStorage
            class ConnectionInformation < Softlayer::Entity
              attr_accessor :datacenter
              attr_accessor :datacenter_short_name
              attr_accessor :private_endpoint
              attr_accessor :public_endpoint

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :datacenter, type: String
                property :datacenter_short_name, type: String
                property :private_endpoint, type: String
                property :public_endpoint, type: String
              end
            end
          end
        end
      end
    end
  end
end
