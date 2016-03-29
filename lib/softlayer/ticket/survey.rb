module Softlayer
  class Ticket
    class Survey < Softlayer::Entity
      SERVICE = 'SoftLayer_Ticket_Survey'

      def self.get_preference
        request(:get_preference, Softlayer::Container::Ticket::Survey::Preference)
      end

      def self.opt_in
        request(:opt_in, Softlayer::Container::Ticket::Survey::Preference)
      end

      def self.opt_out
        request(:opt_out, Softlayer::Container::Ticket::Survey::Preference)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
