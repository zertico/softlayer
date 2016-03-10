module Softlayer
  class Network
    module Tunnel
      module Module
        class Context
          module Address
            class Translation < Softlayer::Model
              attr_accessor :customer_ip_address
              attr_accessor :customer_ip_address_id
              attr_accessor :id
              attr_accessor :internal_ip_address
              attr_accessor :internal_ip_address_id
              attr_accessor :network_tunnel_context_id
              attr_accessor :notes
              attr_accessor :customer_ip_address_record
              attr_accessor :internal_ip_address_record
              attr_accessor :network_tunnel_context

              class Representer < Representable::Decorator
                include Representable::Hash
                include Representable::Coercion
                property :customer_ip_address, type: String
                property :customer_ip_address_id, type: Integer
                property :id, type: Integer
                property :internal_ip_address, type: String
                property :internal_ip_address_id, type: Integer
                property :network_tunnel_context_id, type: Integer
                property :notes, type: String
              end
            end
          end
        end
      end
    end
  end
end
