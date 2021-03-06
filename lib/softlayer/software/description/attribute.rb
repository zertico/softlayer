module Softlayer
  module Software
    class Description
      class Attribute < Softlayer::Entity
        autoload :Type, 'softlayer/software/description/attribute/type'
        attr_accessor :value
        attr_accessor :software_description
        attr_accessor :type

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :value, type: String
        end
      end
    end
  end
end
