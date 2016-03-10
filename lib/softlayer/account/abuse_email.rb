module Softlayer
  class Account
    class AbuseEmail < Softlayer::Model
      attr_accessor :email
      attr_accessor :account

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :email, type: String
      end
    end
  end
end
