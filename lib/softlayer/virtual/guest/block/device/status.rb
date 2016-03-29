module Softlayer
  module Virtual
    class Guest
      module Block
        class Device
          class Status < Softlayer::Entity
            attr_accessor :key_name
            attr_accessor :name

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :key_name, type: String
              property :name, type: String
            end
          end
        end
      end
    end
  end
end
