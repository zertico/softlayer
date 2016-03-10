module Softlayer
  module Product
    class Item
      class Category
        class Question < Softlayer::Model
          autoload :Xref, 'softlayer/product/item/category/question/xref'
          autoload :Field, 'softlayer/product/item/category/question/field'
          attr_accessor :answer_value_expression
          attr_accessor :description
          attr_accessor :field_type_id
          attr_accessor :id
          attr_accessor :key_name
          attr_accessor :question
          attr_accessor :value_example
          attr_accessor :item_category_reference_count
          attr_accessor :field_type
          attr_accessor :item_category_references

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :answer_value_expression, type: String
            property :description, type: String
            property :field_type_id, type: Integer
            property :id, type: Integer
            property :key_name, type: String
            property :question, type: String
            property :value_example, type: String
            property :item_category_reference_count, type: BigDecimal
          end
        end
      end
    end
  end
end
