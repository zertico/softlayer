module Softlayer
  module Marketplace
    class Partner
      class Attachment < Softlayer::Model
        autoload :Type, 'softlayer/marketplace/partner/attachment/type'
        attr_accessor :attachment_type_id
        attr_accessor :base_name
        attr_accessor :display_name
        attr_accessor :file_name
        attr_accessor :id
        attr_accessor :marketplace_partner_id
        attr_accessor :save_as_name
        attr_accessor :attachment_type

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :attachment_type_id, type: Integer
          property :base_name, type: String
          property :display_name, type: String
          property :file_name, type: String
          property :id, type: Integer
          property :marketplace_partner_id, type: Integer
          property :save_as_name, type: String
        end
      end
    end
  end
end
