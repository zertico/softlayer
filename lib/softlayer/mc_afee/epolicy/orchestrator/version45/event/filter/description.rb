module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version45
          module Event
            module Filter
              module Description < Softlayer::Entity
                attr_accessor :name

                class Representer < Softlayer::Entity::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :name, type: String
                end
              end
            end
          end
        end
      end
    end
  end
end
