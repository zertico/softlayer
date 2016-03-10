module Softlayer
  class Network
    module Service
      class Resource
        class Attribute
          class Type < Softlayer::Model
            attr_accessor :keyname

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :keyname, type: String
            end
          end
        end
      end
    end
  end
end
