module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version36
          module Product
            module Properties < Softlayer::Entity
              attr_accessor :dat_version

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :dat_version, type: String
              end
            end
          end
        end
      end
    end
  end
end
