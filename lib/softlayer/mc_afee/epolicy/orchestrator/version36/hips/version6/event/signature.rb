module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version36
          module Hips
            module Version6
              module Event
                module Signature < Softlayer::Entity
                  attr_accessor :signature_name

                  class Representer < Softlayer::Entity::Representer
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
