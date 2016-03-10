module Softlayer
  class Ticket
    class Attachment
      module Virtual
        class Guest < Softlayer::Ticket::Attachment
          attr_accessor :virtual_guest_id
          attr_accessor :resource
          attr_accessor :virtual_guest

          class Representer < Softlayer::Ticket::Attachment::Representer
            include Representable::Hash
            include Representable::Coercion
            property :virtual_guest_id, type: Integer
          end
        end
      end
    end
  end
end
