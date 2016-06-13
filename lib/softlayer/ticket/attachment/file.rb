module Softlayer
  class Ticket
    class Attachment
      class File < Softlayer::Entity
        SERVICE = 'SoftLayer_Ticket_Attachment_File'
        attr_accessor :create_date
        attr_accessor :file_name
        attr_accessor :file_size
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :ticket_id
        attr_accessor :update_id
        attr_accessor :uploader_id
        attr_accessor :uploader_type
        attr_accessor :ticket
        attr_accessor :update

        def self.get_extension_whitelist
          request(:get_extension_whitelist, Array[String])
        end

        def get_object
          request(:get_object, Softlayer::Ticket::Attachment::File)
        end

        def get_ticket
          request(:get_ticket, Softlayer::Ticket)
        end

        def get_update
          request(:get_update, Softlayer::Ticket::Update)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :file_name, type: String
          property :file_size, type: String
          property :id, type: Integer
          property :modify_date, type: DateTime
          property :ticket_id, type: Integer
          property :update_id, type: Integer
          property :uploader_id, type: String
          property :uploader_type, type: String
        end
      end
    end
  end
end
