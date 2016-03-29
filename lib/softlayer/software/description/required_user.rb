module Softlayer
  module Software
    class Description
      class RequiredUser < Softlayer::Entity
        attr_accessor :default_password
        attr_accessor :username

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :default_password, type: String
          property :username, type: String
        end
      end
    end
  end
end
