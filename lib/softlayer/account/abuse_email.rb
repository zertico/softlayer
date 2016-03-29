module Softlayer
  class Account
    class AbuseEmail < Softlayer::Entity
      attr_accessor :email
      attr_accessor :account

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :email, type: String
      end
    end
  end
end
