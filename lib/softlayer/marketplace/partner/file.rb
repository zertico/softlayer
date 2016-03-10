module Softlayer
  module Marketplace
    class Partner
      class File < Softlayer::Model
        autoload :Attributes, 'softlayer/marketplace/partner/file/attributes'
        attr_accessor :attributes
        attr_accessor :contents

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
