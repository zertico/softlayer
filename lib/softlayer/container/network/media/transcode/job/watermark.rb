module Softlayer
  module Container
    module Network
      module Media
        module Transcode
          module Job
            class Watermark < Softlayer::Entity
              autoload :Position, 'softlayer/container/network/media/transcode/job/watermark/position'
              attr_accessor :end_time
              attr_accessor :file_name
              attr_accessor :position
              attr_accessor :start_time
              attr_accessor :text
              attr_accessor :transparency_percentage

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :end_time, type: Integer
                property :file_name, type: String
                property :start_time, type: Integer
                property :text, type: String
                property :transparency_percentage, type: Integer
              end
            end
          end
        end
      end
    end
  end
end
