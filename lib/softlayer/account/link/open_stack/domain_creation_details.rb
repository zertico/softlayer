module Softlayer
  class Account
    class Link
      class OpenStack
        class DomainCreationDetails < Softlayer::Entity
          attr_accessor :domain_id
          attr_accessor :user_id
          attr_accessor :user_name

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :domain_id, type: String
            property :user_id, type: String
            property :user_name, type: String
          end
        end
      end
    end
  end
end
