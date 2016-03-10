module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version36
          module Antivirus
            module Event < Softlayer::Model
              autoload :AccessProtection, 'softlayer/mc_afee/epolicy/orchestrator/version36/antivirus/event/access_protection'
              autoload :Filter, 'softlayer/mc_afee/epolicy/orchestrator/version36/antivirus/event/filter'
              attr_accessor :event_local_date_time
              attr_accessor :filename
              attr_accessor :virus_name
              attr_accessor :virus_type
              attr_accessor :virus_action_taken

              class Representer < Representable::Decorator
                include Representable::Hash
                include Representable::Coercion
                property :event_local_date_time, type: DateTime
                property :filename, type: String
                property :virus_name, type: String
                property :virus_type, type: String
              end
            end
          end
        end
      end
    end
  end
end
