module Softlayer
  module User
    module External
      class Binding
        class Attribute < Softlayer::Entity
          attr_accessor :value
          attr_accessor :external_binding

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :value, type: String
          end
        end
      end
    end
  end
end
