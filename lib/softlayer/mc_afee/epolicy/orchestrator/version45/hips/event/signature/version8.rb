module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version45
          module Hips
            module Event
              module Signature
                module Version8 < Softlayer::Model
                  attr_accessor :signature_name

                  class Representer < Representable::Decorator
                    include Representable::Hash
                    include Representable::Coercion
                    property :signature_name, type: String
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
