module Softlayer
  module Software
    class Description
      class RequiredUser < Softlayer::Model
        attr_accessor :default_password
        attr_accessor :username

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :default_password, type: String
          property :username, type: String
        end
      end
    end
  end
end
