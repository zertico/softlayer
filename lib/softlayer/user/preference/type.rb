module Softlayer
  module User
    class Preference
      class Type < Softlayer::Model
        attr_accessor :description
        attr_accessor :key_name
        attr_accessor :name
        attr_accessor :value_example

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :description, type: String
          property :key_name, type: String
          property :name, type: String
          property :value_example, type: String
        end
      end
    end
  end
end
