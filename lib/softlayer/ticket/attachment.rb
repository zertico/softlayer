module Softlayer
  class Ticket
    class Attachment < Softlayer::Model
      autoload :CardChangeRequest, 'softlayer/ticket/attachment/card_change_request'
      autoload :File, 'softlayer/ticket/attachment/file'
      autoload :Hardware, 'softlayer/ticket/attachment/hardware'
      autoload :ManualPayment, 'softlayer/ticket/attachment/manual_payment'
      autoload :Assigned, 'softlayer/ticket/attachment/assigned'
      autoload :Scheduled, 'softlayer/ticket/attachment/scheduled'
      autoload :Virtual, 'softlayer/ticket/attachment/virtual'
      attr_accessor :attachment_id
      attr_accessor :create_date
      attr_accessor :id
      attr_accessor :ticket_id
      attr_accessor :assigned_agent
      attr_accessor :scheduled_action
      attr_accessor :ticket

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :attachment_id, type: Integer
        property :create_date, type: DateTime
        property :id, type: Integer
        property :ticket_id, type: Integer
      end
    end
  end
end
