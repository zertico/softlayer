module Softlayer
  module Container
    module Product
      class Order
        module Virtual
          module Disk
            class Image < Softlayer::Container::Product::Order
              attr_accessor :disk_description

              class Representer < Softlayer::Container::Product::Order::Representer
                include Representable::Hash
                include Representable::Coercion
                property :disk_description, type: String
              end
            end
          end
        end
      end
    end
  end
end
