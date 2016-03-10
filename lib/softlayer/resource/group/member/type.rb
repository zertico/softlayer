module Softlayer
  module Resource
    class Group
      class Member
        class Type < Softlayer::Model
          attr_accessor :description
          attr_accessor :key_name

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :description, type: String
            property :key_name, type: String
          end
        end
      end
    end
  end
end
