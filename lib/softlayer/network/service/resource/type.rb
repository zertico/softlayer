module Softlayer
  class Network
    module Service
      class Resource
        class Type < Softlayer::Model
          attr_accessor :type
          attr_accessor :service_resource_count
          attr_accessor :service_resources

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :type, type: String
            property :service_resource_count, type: BigDecimal
          end
        end
      end
    end
  end
end
