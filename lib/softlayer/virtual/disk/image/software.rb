module Softlayer
  module Virtual
    module Disk
      class Image
        class Software < Softlayer::Model
          autoload :Password, 'softlayer/virtual/disk/image/software/password'
          attr_accessor :id
          attr_accessor :software_description_id
          attr_accessor :password_count
          attr_accessor :disk_image
          attr_accessor :passwords
          attr_accessor :software_description

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :software_description_id, type: Integer
            property :password_count, type: BigDecimal
          end
        end
      end
    end
  end
end
