module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version36
          module Hips
            module Version6
              module IPSEvent < Softlayer::Entity
                attr_accessor :incident_time
                attr_accessor :process_name
                attr_accessor :reaction_text
                attr_accessor :remote_ip_address
                attr_accessor :severity_text
                attr_accessor :signature

                class Representer < Softlayer::Entity::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :incident_time, type: DateTime
                  property :process_name, type: String
                  property :reaction_text, type: String
                  property :remote_ip_address, type: String
                  property :severity_text, type: String
                end
              end
            end
          end
        end
      end
    end
  end
end
