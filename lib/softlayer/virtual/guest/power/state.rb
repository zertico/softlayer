module Softlayer
  module Virtual
    class Guest
      module Power
        class State < Softlayer::Model
          attr_accessor :description
          attr_accessor :key_name
          attr_accessor :name

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :description, type: String
            property :key_name, type: String
            property :name, type: String
          end
        end
      end
    end
  end
end
