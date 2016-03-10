module Softlayer
  module PortalLoginToken < authenticate
    attr_accessor :user_id
    attr_accessor :auth_token

    class Representer < authenticate::Representer
      include Representable::Hash
      include Representable::Coercion
      property :user_id, type: Integer
      property :auth_token, type: String
    end
  end
end
