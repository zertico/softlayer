module Softlayer
  class Tag
    class Reference
      module Resource
        class Group < Softlayer::Tag::Reference
          attr_accessor :resource

          class Representer < Softlayer::Tag::Reference::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
