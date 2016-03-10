module Softlayer
  module Billing
    class Order
      class Item
        module Category
          class Answer < Softlayer::Model
            attr_accessor :answer
            attr_accessor :create_date
            attr_accessor :question_id
            attr_accessor :order_item
            attr_accessor :question

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :answer, type: String
              property :create_date, type: DateTime
              property :question_id, type: Integer
            end
          end
        end
      end
    end
  end
end
