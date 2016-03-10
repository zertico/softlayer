module Softlayer
  class Account
    class Password
      class Type < Softlayer::Model
        attr_accessor :description

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :description, type: String
        end
      end
    end
  end
end
