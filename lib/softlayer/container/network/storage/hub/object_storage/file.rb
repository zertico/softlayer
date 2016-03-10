module Softlayer
  module Container
    module Network
      module Storage
        module Hub
          module ObjectStorage
            class File < Softlayer::Container::Utility::File::Entity
              attr_accessor :folder
              attr_accessor :hash

              class Representer < Softlayer::Container::Utility::File::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :folder, type: String
                property :hash, type: String
              end
            end
          end
        end
      end
    end
  end
end
