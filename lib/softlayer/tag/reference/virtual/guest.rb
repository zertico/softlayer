module Softlayer
  class Tag
    class Reference
      module Virtual
        class Guest < Softlayer::Tag::Reference
          autoload :Block, 'softlayer/tag/reference/virtual/guest/block'
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
