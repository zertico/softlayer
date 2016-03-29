module Softlayer
  module Configuration
    module Storage
      module Group
        module Template
          class Group < Softlayer::Entity
            attr_accessor :grow
            attr_accessor :hard_drives_string
            attr_accessor :order_index
            attr_accessor :size
            attr_accessor :type

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :grow, type: Boolean
              property :hard_drives_string, type: String
              property :order_index, type: Integer
              property :size, type: Float
            end
          end
        end
      end
    end
  end
end
