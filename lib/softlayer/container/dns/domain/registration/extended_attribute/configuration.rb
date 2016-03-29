module Softlayer
  module Container
    module Dns
      module Domain
        module Registration
          class ExtendedAttribute
            class Configuration < Softlayer::Entity
              attr_accessor :name
              attr_accessor :value

              class Representer < Softlayer::Entity::Representer
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
