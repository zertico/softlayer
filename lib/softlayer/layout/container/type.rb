module Softlayer
  module Layout
    class Container
      class Type < Softlayer::Model
        attr_accessor :id
        attr_accessor :keyname
        attr_accessor :name

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :id, type: Integer
          property :keyname, type: String
          property :name, type: String
        end
      end
    end
  end
end