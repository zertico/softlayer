module Softlayer
  module Marketplace
    class Partner
      class File
        class Attributes < Softlayer::Entity
          attr_accessor :bits
          attr_accessor :channels
          attr_accessor :height
          attr_accessor :html_attributes
          attr_accessor :image_type
          attr_accessor :is_image
          attr_accessor :mime_type
          attr_accessor :width

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :bits, type: Integer
            property :channels, type: Integer
            property :height, type: Integer
            property :html_attributes, type: String
            property :image_type, type: Integer
            property :is_image, type: Boolean
            property :mime_type, type: String
            property :width, type: Integer
          end
        end
      end
    end
  end
end
