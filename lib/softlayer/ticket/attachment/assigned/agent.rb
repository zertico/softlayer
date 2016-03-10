module Softlayer
  class Ticket
    class Attachment
      module Assigned
        class Agent < Softlayer::Ticket::Attachment
          attr_accessor :assigned_agent_id
          attr_accessor :resource

          class Representer < Softlayer::Ticket::Attachment::Representer
            include Representable::Hash
            include Representable::Coercion
            property :assigned_agent_id, type: Integer
          end
        end
      end
    end
  end
end
