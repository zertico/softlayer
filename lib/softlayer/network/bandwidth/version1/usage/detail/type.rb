module Softlayer
  class Network
    module Bandwidth
      module Version1
        class Usage
          class Detail
            class Type < Softlayer::Entity
              attr_accessor :alias

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :alias, type: String
              end
            end
          end
        end
      end
    end
  end
end
