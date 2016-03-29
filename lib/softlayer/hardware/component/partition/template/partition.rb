module Softlayer
  class Hardware
    class Component
      class Partition
        class Template
          class Partition < Softlayer::Entity
            attr_accessor :id
            attr_accessor :is_grow
            attr_accessor :partition_name
            attr_accessor :partition_size
            attr_accessor :partition_template_id
            attr_accessor :filesystem_type
            attr_accessor :partition_template

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :id, type: Integer
              property :is_grow, type: Boolean
              property :partition_name, type: String
              property :partition_size, type: Float
              property :partition_template_id, type: Integer
            end
          end
        end
      end
    end
  end
end
