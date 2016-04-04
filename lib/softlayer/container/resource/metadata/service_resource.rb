module Softlayer
  module Container
    module Resource
      module Metadata
        class ServiceResource < Softlayer::Entity
          attr_accessor :backend_ip_address
          attr_accessor :type

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :backend_ip_address, type: String
          end
        end
      end
    end
  end
end
