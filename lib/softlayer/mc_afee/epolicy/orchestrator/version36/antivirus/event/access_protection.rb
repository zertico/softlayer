module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version36
          module Antivirus
            module Event
              module AccessProtection < Softlayer::Model
                attr_accessor :event_local_date_time
                attr_accessor :filename
                attr_accessor :process_name
                attr_accessor :rule_name
                attr_accessor :source

                class Representer < Representable::Decorator
                  include Representable::Hash
                  include Representable::Coercion
                  property :event_local_date_time, type: DateTime
                  property :filename, type: String
                  property :process_name, type: String
                  property :rule_name, type: String
                  property :source, type: String
                end
              end
            end
          end
        end
      end
    end
  end
end
