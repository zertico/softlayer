module Softlayer
  class Network
    class Storage
      class Partnership
        class Type < Softlayer::Model
          attr_accessor :description
          attr_accessor :keyname
          attr_accessor :name

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :description, type: String
            property :keyname, type: String
            property :name, type: String
          end
        end
      end
    end
  end
end
