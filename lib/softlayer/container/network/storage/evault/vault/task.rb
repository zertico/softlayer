module Softlayer
  module Container
    module Network
      module Storage
        module Evault
          module Vault
            class Task < Softlayer::Entity
              attr_accessor :id
              attr_accessor :name
              attr_accessor :used_poolsize

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :id, type: Integer
                property :name, type: String
                property :used_poolsize, type: BigDecimal
              end
            end
          end
        end
      end
    end
  end
end
