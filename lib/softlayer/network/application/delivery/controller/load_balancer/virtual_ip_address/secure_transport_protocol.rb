module Softlayer
  class Network
    module Application
      module Delivery
        class Controller
          module LoadBalancer
            class VirtualIpAddress
              class SecureTransportProtocol < Softlayer::Entity
                attr_accessor :id
                attr_accessor :key_name
                attr_accessor :virtual_ip_address_id
                attr_accessor :virtual_ip_address

                class Representer < Softlayer::Entity::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :id, type: Integer
                  property :key_name, type: String
                  property :virtual_ip_address_id, type: Integer
                end
              end
            end
          end
        end
      end
    end
  end
end
