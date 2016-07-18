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
                  attr_accessor :web_cc_url

                  class Representer < Softlayer::Entity::Representer
                    include Representable::Hash
                    include Representable::Coercion
                    property :event_validation, type: String
                    property :view_state, type: String
                    property :web_cc_url, type: String
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
