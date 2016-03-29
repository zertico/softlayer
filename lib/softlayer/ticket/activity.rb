module Softlayer
  class Ticket
    class Activity < Softlayer::Entity
      attr_accessor :create_date
      attr_accessor :create_timestamp
      attr_accessor :id
      attr_accessor :value
      attr_accessor :editor
      attr_accessor :ticket
      attr_accessor :ticket_update

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :create_date, type: DateTime
        property :create_timestamp, type: DateTime
        property :id, type: Integer
        property :value, type: String
      end
    end
  end
end
