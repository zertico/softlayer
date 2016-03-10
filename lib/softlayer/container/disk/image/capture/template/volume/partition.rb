module Softlayer
  module Container
    module Disk
      module Image
        module Capture
          class Template
            class Volume
              class Partition < Softlayer::Model
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
end
