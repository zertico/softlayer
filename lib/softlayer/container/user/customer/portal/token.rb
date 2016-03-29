module Softlayer
  module Container
    module User
      module Customer
        module Portal
          class Token < Softlayer::Entity
            attr_accessor :hash
            attr_accessor :user
            attr_accessor :user_id

            class Representer < Softlayer::Entity::Representer
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
end
