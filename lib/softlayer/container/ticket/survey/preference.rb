module Softlayer
  module Container
    module Ticket
      module Survey
        class Preference < Softlayer::Model
          attr_accessor :applicable
          attr_accessor :opted_out
          attr_accessor :opted_out_date

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :applicable, type: Boolean
            property :opted_out, type: Boolean
            property :opted_out_date, type: DateTime
          end
        end
      end
    end
  end
end
