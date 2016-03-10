module Softlayer
  class Survey
    class Response < Softlayer::Model
      attr_accessor :other_answer
      attr_accessor :survey_answer_id
      attr_accessor :survey_answer

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :other_answer, type: String
        property :survey_answer_id, type: Integer
      end
    end
  end
end
