module Softlayer
  module Configuration
    class Template
      class Attribute < Softlayer::Model
        attr_accessor :value
        attr_accessor :configuration_template

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :value, type: String
        end
      end
    end
  end
end
