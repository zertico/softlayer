module Softlayer
  module Marketplace
    class Partner
      class File < Softlayer::Entity
        autoload :Attributes, 'softlayer/marketplace/partner/file/attributes'
        attr_accessor :attributes
        attr_accessor :contents

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
