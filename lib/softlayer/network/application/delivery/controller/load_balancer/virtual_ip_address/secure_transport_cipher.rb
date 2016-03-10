module Softlayer
  class Network
    module Application
      module Delivery
        class Controller
          module LoadBalancer
            class VirtualIpAddress
              class SecureTransportCipher < Softlayer::Model
                attr_accessor :id
                attr_accessor :key_name
                attr_accessor :virtual_ip_address_id
                attr_accessor :virtual_ip_address

                class Representer < Representable::Decorator
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
