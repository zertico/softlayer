module Softlayer
  class Survey
    class Question < Softlayer::Model
      attr_accessor :id
      attr_accessor :is_required
      attr_accessor :multi_answer
      attr_accessor :question
      attr_accessor :question_order
      attr_accessor :survey_id
      attr_accessor :answer_count
      attr_accessor :answers
      attr_accessor :survey

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :id, type: Integer
        property :is_required, type: Integer
        property :multi_answer, type: Integer
        property :question, type: String
        property :question_order, type: Integer
        property :survey_id, type: Integer
        property :answer_count, type: BigDecimal
      end
    end
  end
end
