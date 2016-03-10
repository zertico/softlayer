module Softlayer
  module Container
    module User
      module Authentication
        class Token < Softlayer::Model
          attr_accessor :hash
          attr_accessor :user
          attr_accessor :user_id

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :hash, type: String
            property :user_id, type: Integer
          end
        end
      end
    end
  end
end
