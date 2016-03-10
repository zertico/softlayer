module Softlayer
  class Ticket
    class Update
      class Agent < Softlayer::Ticket::Update

        class Representer < Softlayer::Ticket::Update::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
