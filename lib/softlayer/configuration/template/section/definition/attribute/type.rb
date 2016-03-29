module Softlayer
  module Configuration
    class Template
      class Section
        class Definition
          class Attribute
            class Type < Softlayer::Entity
              attr_accessor :description
              attr_accessor :name

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :description, type: String
                property :name, type: String
              end
            end
          end
        end
      end
    end
  end
end
