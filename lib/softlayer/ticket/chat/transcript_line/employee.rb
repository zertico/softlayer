module Softlayer
  class Ticket
    class Chat
      class TranscriptLine
        class Employee < Softlayer::Ticket::Chat::TranscriptLine

          class Representer < Softlayer::Ticket::Chat::TranscriptLine::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
