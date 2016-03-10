module Softlayer
  class Survey
    class Answer < Softlayer::Model
      attr_accessor :answer
      attr_accessor :answer_order
      attr_accessor :id
      attr_accessor :survey_question_id
      attr_accessor :survey_question

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :answer, type: String
        property :answer_order, type: Integer
        property :id, type: Integer
        property :survey_question_id, type: Integer
      end
    end
  end
end
