module Softlayer
  module Container
    module KnowledgeLayer
      class QuestionAnswer < Softlayer::Entity
        attr_accessor :answer
        attr_accessor :link
        attr_accessor :question

        class Representer < Softlayer::Entity::Representer
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
