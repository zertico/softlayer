module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version45
          module Event < Softlayer::Entity
            autoload :Version7, 'softlayer/mc_afee/epolicy/orchestrator/version45/event/version7'
            autoload :Version8, 'softlayer/mc_afee/epolicy/orchestrator/version45/event/version8'
            autoload :Filter, 'softlayer/mc_afee/epolicy/orchestrator/version45/event/filter'
            attr_accessor :detected_utc
            attr_accessor :source_ipv4
            attr_accessor :source_process_name
            attr_accessor :target_filename
            attr_accessor :threat_action_taken
            attr_accessor :threat_name
            attr_accessor :threat_severity_label
            attr_accessor :threat_type
            attr_accessor :agent_details
            attr_accessor :virus_action_taken

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :detected_utc, type: DateTime
              property :source_ipv4, type: String
              property :source_process_name, type: String
              property :target_filename, type: String
              property :threat_action_taken, type: String
              property :threat_name, type: String
              property :threat_severity_label, type: String
              property :threat_type, type: String
            end
          end
        end
      end
    end
  end
end
