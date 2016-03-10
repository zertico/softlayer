module Softlayer
  module Resource
    class Group
      module Descendant
        class Reference < Softlayer::Model
          attr_accessor :group
          attr_accessor :group_member

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
