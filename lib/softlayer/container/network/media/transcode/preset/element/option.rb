module Softlayer
  module Container
    module Network
      module Media
        module Transcode
          class Preset
            class Element
              class Option < Softlayer::Entity
                attr_accessor :name
                attr_accessor :value

                class Representer < Softlayer::Entity::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :name, type: String
                  property :value, type: String
                end
              end
            end
          end
        end
      end
    end
  end
end
