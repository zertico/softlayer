module Softlayer
  module Security
    module Directory
      module Service
        module Host
          module Xref
            class Hardware < Softlayer::Model
              attr_accessor :host

              class Representer < Representable::Decorator
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
