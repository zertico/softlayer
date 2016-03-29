module Softlayer
  module Container
    module Disk
      module Image
        module Capture
          class Template
            class Volume
              class Partition < Softlayer::Entity
                attr_accessor :name

                class Representer < Softlayer::Entity::Representer
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
