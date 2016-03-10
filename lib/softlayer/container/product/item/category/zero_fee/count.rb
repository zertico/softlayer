module Softlayer
  module Container
    module Product
      module Item
        class Category
          module ZeroFee
            class Count < Softlayer::Model
              attr_accessor :category_code
              attr_accessor :category_id
              attr_accessor :category_name
              attr_accessor :count

              class Representer < Representable::Decorator
                include Representable::Hash
                include Representable::Coercion
                property :category_code, type: String
                property :category_id, type: Integer
                property :category_name, type: String
                property :count, type: Integer
              end
            end
          end
        end
      end
    end
  end
end
