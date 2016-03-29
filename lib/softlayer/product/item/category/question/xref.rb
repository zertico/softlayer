module Softlayer
  module Product
    class Item
      class Category
        class Question
          class Xref < Softlayer::Entity
            attr_accessor :id
            attr_accessor :item_category_id
            attr_accessor :location_id
            attr_accessor :question_id
            attr_accessor :required
            attr_accessor :item_category
            attr_accessor :question

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :id, type: Integer
              property :item_category_id, type: Integer
              property :location_id, type: Integer
              property :question_id, type: Integer
              property :required, type: Boolean
            end
          end
        end
      end
    end
  end
end
