module Softlayer
  module User
    class Customer
      class AdditionalEmail < Softlayer::Entity
        attr_accessor :email
        attr_accessor :user_id
        attr_accessor :user

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :email, type: String
          property :user_id, type: Integer
        end
      end
    end
  end
end
