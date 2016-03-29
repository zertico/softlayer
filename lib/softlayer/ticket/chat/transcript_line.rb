module Softlayer
  class Ticket
    class Chat
      class TranscriptLine < Softlayer::Entity
        autoload :Customer, 'softlayer/ticket/chat/transcript_line/customer'
        autoload :Employee, 'softlayer/ticket/chat/transcript_line/employee'
        attr_accessor :speaker

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
