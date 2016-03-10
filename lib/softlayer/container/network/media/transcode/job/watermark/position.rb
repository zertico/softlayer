module Softlayer
  module Container
    module Network
      module Media
        module Transcode
          module Job
            class Watermark
              class Position < Softlayer::Model
                attr_accessor :x
                attr_accessor :y

                class Representer < Representable::Decorator
                  include Representable::Hash
                  include Representable::Coercion
                  property :x, type: Integer
                  property :y, type: Integer
                end
              end
            end
          end
        end
      end
    end
  end
end
