module Softlayer
  class Ticket
    class Update
      class Employee < Softlayer::Ticket::Update
        SERVICE = 'SoftLayer_Ticket_Update_Employee'
        attr_accessor :response_rating

        # response_rating
        def add_response_rating(message)
          request(:add_response_rating, Boolean, message)
        end

        def get_change_owner_activity
          request(:get_change_owner_activity, String)
        end

        def get_editor
          request(:get_editor, Softlayer::User::Employee)
        end

        def get_file_attachment
          request(:get_file_attachment, Array[Softlayer::Ticket::Attachment::File])
        end

        def get_object
          request(:get_object, Softlayer::Ticket::Update::Employee)
        end

        def get_ticket
          request(:get_ticket, Softlayer::Ticket)
        end

        def get_type
          request(:get_type, Softlayer::Ticket::Update::Type)
        end

        class Representer < Softlayer::Ticket::Update::Representer
          include Representable::Hash
          include Representable::Coercion
          property :response_rating, type: Integer
        end
      end
    end
  end
end
