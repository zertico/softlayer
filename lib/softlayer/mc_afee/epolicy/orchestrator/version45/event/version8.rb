module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version45
          module Event
            module Version8 < Softlayer::McAfee::Epolicy::Orchestrator::Version45::Event
              attr_accessor :signature

              class Representer < Softlayer::McAfee::Epolicy::Orchestrator::Version45::Event::Representer
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
