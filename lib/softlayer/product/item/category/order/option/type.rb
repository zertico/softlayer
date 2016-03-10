module Softlayer
  module Product
    class Item
      class Category
        module Order
          module Option
            class Type < Softlayer::Model
              attr_accessor :description
              attr_accessor :id
              attr_accessor :keyname
              attr_accessor :name
              attr_accessor :value

              class Representer < Representable::Decorator
                include Representable::Hash
                include Representable::Coercion
                property :description, type: String
                property :id, type: Integer
                property :keyname, type: String
                property :name, type: String
                property :value, type: String
              end
            end
          end
        end
      end
    end
  end
end
