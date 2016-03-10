module Softlayer
  class Ticket
    class Chat < Softlayer::Model
      autoload :Liveperson, 'softlayer/ticket/chat/liveperson'
      autoload :TranscriptLine, 'softlayer/ticket/chat/transcript_line'
      attr_accessor :customer_id
      attr_accessor :end_date
      attr_accessor :start_date
      attr_accessor :transcript
      attr_accessor :agent
      attr_accessor :customer
      attr_accessor :ticket_update

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :customer_id, type: Integer
        property :end_date, type: DateTime
        property :start_date, type: DateTime
        property :transcript, type: String
      end
    end
  end
end
