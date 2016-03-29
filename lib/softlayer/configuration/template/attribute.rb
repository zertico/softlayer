module Softlayer
  module Configuration
    class Template
      class Attribute < Softlayer::Entity
        attr_accessor :value
        attr_accessor :configuration_template

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :value, type: String
        end
      end
    end
  end
end
