module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version36
          module Agent
            module Details < Softlayer::Entity
              attr_accessor :agent_version
              attr_accessor :last_update
              attr_accessor :current_policy

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :agent_version, type: String
                property :last_update, type: String
              end
            end
          end
        end
      end
    end
  end
end
