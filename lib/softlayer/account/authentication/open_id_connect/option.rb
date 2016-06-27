module Softlayer
  class Account
    module Authentication
      module OpenIdConnect
        class Option < Softlayer::Entity
          attr_accessor :key
          attr_accessor :value

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :key, type: String
            property :value, type: String
          end
        end
      end
    end
  end
end
