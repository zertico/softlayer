module Softlayer
  class Hardware
    class Attribute < Softlayer::Model
      autoload :Type, 'softlayer/hardware/attribute/type'
      attr_accessor :hardware_attribute_type_id
      attr_accessor :id
      attr_accessor :value
      attr_accessor :hardware_attribute_type

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :hardware_attribute_type_id, type: Integer
        property :id, type: Integer
        property :value, type: String
      end
    end
  end
end
