module Softlayer
  module Security
    module Directory
      module Service
        module Host
          module Xref
            class Hardware < Softlayer::Entity
              attr_accessor :host

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
              end
            end
          end
        end
      end
    end
  end
end
