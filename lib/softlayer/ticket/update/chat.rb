module Softlayer
  class Ticket
    class Update
      class Chat < Softlayer::Ticket::Update
        attr_accessor :chat

        class Representer < Softlayer::Ticket::Update::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
