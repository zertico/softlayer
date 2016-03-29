module Softlayer
  module Container
    module Dns
      module Domain
        module Registration
          class Nameserver
            class List < Softlayer::Entity
              attr_accessor :ipv4_address
              attr_accessor :ipv6_address
              attr_accessor :name
              attr_accessor :sort_order

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :ipv4_address, type: String
                property :ipv6_address, type: String
                property :name, type: String
                property :sort_order, type: Integer
              end
            end
          end
        end
      end
    end
  end
end
