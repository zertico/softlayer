module Softlayer
  module User
    module External
      class Binding
        class Attribute < Softlayer::Model
          attr_accessor :value
          attr_accessor :external_binding

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :value, type: String
          end
        end
      end
    end
  end
end
