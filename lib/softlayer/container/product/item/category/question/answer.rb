module Softlayer
  module Container
    module Product
      module Item
        class Category
          module Question
            class Answer < Softlayer::Model
              attr_accessor :answer
              attr_accessor :category_code
              attr_accessor :category_id
              attr_accessor :question_id

              class Representer < Representable::Decorator
                include Representable::Hash
                include Representable::Coercion
                property :answer, type: String
                property :category_code, type: String
                property :category_id, type: Integer
                property :question_id, type: Integer
              end
            end
          end
        end
      end
    end
  end
end
