module Softlayer
  module Scale
    class Asset
      class Hardware < Softlayer::Scale::Asset
        SERVICE = 'SoftLayer_Scale_Asset_Hardware'
        attr_accessor :hardware
        attr_accessor :hardware_id

        def self.create_object(template_object = nil)
          message = {template_object: template_object}
          request(:create_object, Softlayer::Scale::Asset::Hardware, message)
        end

        def delete_object
          request(:delete_object, Boolean)
        end

        def get_hardware
          request(:get_hardware, Softlayer::Hardware)
        end

        def get_hardware_id
          request(:get_hardware_id, Integer)
        end

        def get_object
          request(:get_object, Softlayer::Scale::Asset::Hardware)
        end

        def get_scale_group
          request(:get_scale_group, Softlayer::Scale::Group)
        end

        class Representer < Softlayer::Scale::Asset::Representer
          include Representable::Hash
          include Representable::Coercion
          property :hardware_id, type: Integer
        end
      end
    end
  end
end
