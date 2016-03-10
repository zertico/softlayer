module Softlayer
  class Tag
    class Reference
      class Hardware < Softlayer::Tag::Reference
        attr_accessor :resource

        class Representer < Softlayer::Tag::Reference::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
