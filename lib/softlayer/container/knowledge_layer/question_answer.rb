module Softlayer
  module Container
    module KnowledgeLayer
      class QuestionAnswer < Softlayer::Model
        attr_accessor :answer
        attr_accessor :link
        attr_accessor :question

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :answer, type: String
          property :link, type: String
          property :question, type: String
        end
      end
    end
  end
end
