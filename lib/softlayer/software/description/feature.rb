module Softlayer
  module Software
    class Description
      class Feature < Softlayer::Model
        attr_accessor :id
        attr_accessor :key_name
        attr_accessor :name
        attr_accessor :vendor

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :id, type: Integer
          property :key_name, type: String
          property :name, type: String
          property :vendor, type: String
        end
      end
    end
  end
end
