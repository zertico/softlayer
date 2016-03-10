module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version36
          module Hips
            module Version7
              module Event
                module Signature < Softlayer::Model
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
