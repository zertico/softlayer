module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version36
          module Antivirus
            module Event
              module Filter
                module Description < Softlayer::Model
                  attr_accessor :name

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
end
