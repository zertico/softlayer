module Softlayer
  module Container
    module Utility
      module Microsoft
        module Windows
          module UpdateServices
            class UpdateItem < Softlayer::Entity
              attr_accessor :description
              attr_accessor :failed
              attr_accessor :kb_article_number
              attr_accessor :optional
              attr_accessor :requires_reboot

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :description, type: String
                property :failed, type: Boolean
                property :kb_article_number, type: Integer
                property :optional, type: Boolean
                property :requires_reboot, type: Boolean
              end
            end
          end
        end
      end
    end
  end
end
