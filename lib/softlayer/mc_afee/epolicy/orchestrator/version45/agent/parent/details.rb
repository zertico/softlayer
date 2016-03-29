module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version45
          module Agent
            module Parent
              module Details < Softlayer::Entity
                attr_accessor :name
                attr_accessor :policy_count
                attr_accessor :agent_details
                attr_accessor :policies

                class Representer < Softlayer::Entity::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :name, type: String
                  property :policy_count, type: BigDecimal
                end
              end
            end
          end
        end
      end
    end
  end
end
