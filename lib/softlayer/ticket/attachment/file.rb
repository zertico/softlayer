module Softlayer
  class Ticket
    class Attachment
      class File < Softlayer::Model
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

        class Representer < Representable::Decorator
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
