module Softlayer
  module Layout
    class Preference
      class Type < Softlayer::Entity
        attr_accessor :id
        attr_accessor :keyname
        attr_accessor :name
        attr_accessor :value_expression

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :id, type: Integer
          property :keyname, type: String
          property :name, type: String
          property :value_expression, type: String
        end
      end
    end
  end
end
