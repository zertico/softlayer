module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version45
          module Agent
            module Details < Softlayer::Entity
              attr_accessor :agent_version
              attr_accessor :last_update

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :agent_version, type: String
                property :last_update, type: DateTime
              end
            end
          end
        end
      end
    end
  end
end
