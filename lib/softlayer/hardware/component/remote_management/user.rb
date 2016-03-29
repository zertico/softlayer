module Softlayer
  class Hardware
    class Component
      class RemoteManagement
        class User < Softlayer::Entity
          attr_accessor :password
          attr_accessor :username
          attr_accessor :hardware
          attr_accessor :network_component

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :password, type: String
            property :username, type: String
          end
        end
      end
    end
  end
end
