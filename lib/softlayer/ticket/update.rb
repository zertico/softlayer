module Softlayer
  class Ticket
    class Update < Softlayer::Entity
      autoload :Agent, 'softlayer/ticket/update/agent'
      autoload :Chat, 'softlayer/ticket/update/chat'
      autoload :Customer, 'softlayer/ticket/update/customer'
      autoload :Employee, 'softlayer/ticket/update/employee'
      autoload :Type, 'softlayer/ticket/update/type'
      attr_accessor :create_date
      attr_accessor :editor_id
      attr_accessor :editor_type
      attr_accessor :entry
      attr_accessor :id
      attr_accessor :ticket_id
      attr_accessor :file_attachment_count
      attr_accessor :change_owner_activity
      attr_accessor :editor
      attr_accessor :file_attachment
      attr_accessor :ticket
      attr_accessor :type

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :create_date, type: DateTime
        property :editor_id, type: Integer
        property :editor_type, type: String
        property :entry, type: String
        property :id, type: Integer
        property :ticket_id, type: Integer
        property :file_attachment_count, type: BigDecimal
        property :change_owner_activity, type: String
      end
    end
  end
end
