module Softlayer
  module Container
    module Disk
      module Image
        module Capture
          class Template
            class Volume < Softlayer::Model
              autoload :Partition, 'softlayer/container/disk/image/capture/template/volume/partition'
              attr_accessor :name
              attr_accessor :partitions

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
