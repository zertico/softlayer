module Softlayer
  module Product
    class Item
      module Resource
        class Conflict
          class Item < Softlayer::Product::Item::Resource::Conflict
            autoload :Category, 'softlayer/product/item/resource/conflict/item/category'
            attr_accessor :resource

            class Representer < Softlayer::Product::Item::Resource::Conflict::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
