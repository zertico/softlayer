module Softlayer
  class Ticket
    class Chat
      class Liveperson < Softlayer::Ticket::Chat

        class Representer < Softlayer::Ticket::Chat::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
