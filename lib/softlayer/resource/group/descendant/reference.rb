module Softlayer
  module Resource
    class Group
      module Descendant
        class Reference < Softlayer::Entity
          attr_accessor :group
          attr_accessor :group_member

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
