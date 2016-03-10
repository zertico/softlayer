module Softlayer
  class Ticket
    class Attachment
      module Scheduled
        class Action < Softlayer::Ticket::Attachment
          attr_accessor :run_date
          attr_accessor :transaction_id
          attr_accessor :resource
          attr_accessor :transaction

          class Representer < Softlayer::Ticket::Attachment::Representer
            include Representable::Hash
            include Representable::Coercion
            property :run_date, type: DateTime
            property :transaction_id, type: Integer
          end
        end
      end
    end
  end
end
