module Softlayer
  module Resource
    class Group
      class Template
        class Member < Softlayer::Entity
          attr_accessor :max_quantity
          attr_accessor :min_quantity
          attr_accessor :role_id
          attr_accessor :template_id
          attr_accessor :role
          attr_accessor :template

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :max_quantity, type: Integer
            property :min_quantity, type: Integer
            property :role_id, type: Integer
            property :template_id, type: Integer
          end
        end
      end
    end
  end
end
