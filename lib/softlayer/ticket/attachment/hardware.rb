module Softlayer
  class Ticket
    class Attachment
      class Hardware < Softlayer::Ticket::Attachment
        attr_accessor :hardware_id
        attr_accessor :hardware
        attr_accessor :resource

        class Representer < Softlayer::Ticket::Attachment::Representer
          include Representable::Hash
          include Representable::Coercion
          property :hardware_id, type: Integer
        end
      end
    end
  end
end
