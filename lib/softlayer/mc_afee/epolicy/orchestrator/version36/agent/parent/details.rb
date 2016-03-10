module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version36
          module Agent
            module Parent
              module Details < Softlayer::Model
                attr_accessor :name
                attr_accessor :current_policy

                class Representer < Representable::Decorator
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
