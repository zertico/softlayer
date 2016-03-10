module Softlayer
  class Ticket
    class State < Softlayer::Model
      autoload :Type, 'softlayer/ticket/state/type'
      attr_accessor :id
      attr_accessor :state_type_id
      attr_accessor :ticket_id
      attr_accessor :state_type
      attr_accessor :ticket

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :id, type: Integer
        property :state_type_id, type: Integer
        property :ticket_id, type: Integer
      end
    end
  end
end
