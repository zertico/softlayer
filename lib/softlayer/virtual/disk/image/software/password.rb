module Softlayer
  module Virtual
    module Disk
      class Image
        class Software
          class Password < Softlayer::Entity
            attr_accessor :password
            attr_accessor :username
            attr_accessor :software

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :password, type: String
              property :username, type: String
            end
          end
        end
      end
    end
  end
end
