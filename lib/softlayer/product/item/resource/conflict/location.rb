module Softlayer
  module Product
    class Item
      module Resource
        class Conflict
          class Location < Softlayer::Product::Item::Resource::Conflict
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
