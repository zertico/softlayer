module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version36
          module Policy
            module Object < Softlayer::Model
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
