module Softlayer
  class Ticket
    class Priority < Softlayer::Entity
      SERVICE = 'SoftLayer_Ticket_Priority'

      def self.get_priorities
        request(:get_priorities, Array[Softlayer::Container::Ticket::Priority])
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
