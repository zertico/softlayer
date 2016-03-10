module Softlayer
  module Container
    module Network
      module Storage
        module Evault
          module WebCc
            class AgentStatus < Softlayer::Model
              attr_accessor :last_backup
              attr_accessor :status

              class Representer < Representable::Decorator
                include Representable::Hash
                include Representable::Coercion
                property :last_backup, type: DateTime
                property :status, type: String
              end
            end
          end
        end
      end
    end
  end
end
