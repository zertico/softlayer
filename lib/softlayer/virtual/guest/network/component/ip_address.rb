module Softlayer
  module Virtual
    class Guest
      module Network
        class Component
          class IpAddress < Softlayer::Entity
            attr_accessor :ip_address_id
            attr_accessor :port
            attr_accessor :type
            attr_accessor :ip_address
            attr_accessor :network_component

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :ip_address_id, type: Integer
              property :port, type: Integer
              property :type, type: String
            end
          end
        end
      end
    end
  end
end
