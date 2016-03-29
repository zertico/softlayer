module Softlayer
  module Container
    module Network
      module Storage
        module Hub
          module ObjectStorage
            class Node < Softlayer::Entity
              attr_accessor :device_name
              attr_accessor :resource_name
              attr_accessor :user_auth_url

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :device_name, type: String
                property :resource_name, type: String
                property :user_auth_url, type: String
              end
            end
          end
        end
      end
    end
  end
end
