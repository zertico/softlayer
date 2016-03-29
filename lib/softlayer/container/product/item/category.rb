module Softlayer
  module Container
    module Product
      module Item
        class Category < Softlayer::Entity
          autoload :Question, 'softlayer/container/product/item/category/question'
          autoload :ZeroFee, 'softlayer/container/product/item/category/zero_fee'
          attr_accessor :id

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
          end
        end
      end
    end
  end
end
