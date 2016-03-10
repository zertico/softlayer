module Softlayer
  module Virtual
    class Guest
      class Attribute
        class Type < Softlayer::Model
          attr_accessor :keyname
          attr_accessor :name

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :keyname, type: String
            property :name, type: String
          end
        end
      end
    end
  end
end
