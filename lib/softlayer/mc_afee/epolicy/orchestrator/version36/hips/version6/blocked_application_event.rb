module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version36
          module Hips
            module Version6
              module BlockedApplicationEvent < Softlayer::Model
                attr_accessor :application_description
                attr_accessor :incident_time
                attr_accessor :process_name

                class Representer < Representable::Decorator
                  include Representable::Hash
                  include Representable::Coercion
                  property :application_description, type: String
                  property :incident_time, type: DateTime
                  property :process_name, type: String
                end
              end
            end
          end
        end
      end
    end
  end
end
