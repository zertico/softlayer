module Softlayer
  module Container
    module Network
      module Storage
        module Backup
          module Evault
            module WebCc
              module Authentication
                class Details < Softlayer::Entity
                  attr_accessor :event_validation
                  attr_accessor :view_state

                  class Representer < Softlayer::Entity::Representer
                    include Representable::Hash
                    include Representable::Coercion
                    property :event_validation, type: String
                    property :view_state, type: String
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
