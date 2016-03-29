module Softlayer
  class Ticket
    class Subject < Softlayer::Entity
      SERVICE = 'SoftLayer_Ticket_Subject'
      attr_accessor :id
      attr_accessor :name
      attr_accessor :group

      def self.get_all_objects
        request(:get_all_objects, Array[Softlayer::Ticket::Subject])
      end

      def get_group
        request(:get_group, Softlayer::Ticket::Group)
      end

      def get_object
        request(:get_object, Softlayer::Ticket::Subject)
      end

      def get_top_five_knowledge_layer_questions
        request(:get_top_five_knowledge_layer_questions, Array[Softlayer::Container::KnowledgeLayer::QuestionAnswer])
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :id, type: Integer
        property :name, type: String
      end
    end
  end
end
