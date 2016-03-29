module Softlayer
  class Network
    module Service
      class Resource
        class Attribute < Softlayer::Entity
          autoload :Type, 'softlayer/network/service/resource/attribute/type'
          attr_accessor :value
          attr_accessor :attribute_type
          attr_accessor :service_resource

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :value, type: String
          end
        end
      end
    end
  end
end
