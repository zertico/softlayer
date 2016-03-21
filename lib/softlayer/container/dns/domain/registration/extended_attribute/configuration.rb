module Softlayer
  module Container
    module Dns
      module Domain
        module Registration
          class ExtendedAttribute
            class Configuration < Softlayer::Model
              attr_accessor :name
              attr_accessor :value

              class Representer < Representable::Decorator
                include Representable::Hash
                include Representable::Coercion
                property :name, type: String
                property :value, type: String
              end
            end
          end
        end
      end
    end
  end
end
