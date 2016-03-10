module Softlayer
  module Container
    module Network
      module Media
        module Transcode
          class Preset
            class Element
              class Option < Softlayer::Model
                attr_accessor :name
                attr_accessor :value

                class Representer < Representable::Decorator
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
