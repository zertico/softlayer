module Softlayer
  module Scale
    class Asset
      module Virtual
        class Guest < Softlayer::Scale::Asset
          SERVICE = 'SoftLayer_Scale_Asset_Virtual_Guest'
          attr_accessor :virtual_guest
          attr_accessor :virtual_guest_id

          def self.create_object(template_object = nil)
            message = {template_object: template_object}
            request(:create_object, Softlayer::Scale::Asset::Virtual::Guest, message)
          end

          def delete_object
            request(:delete_object, Boolean)
          end

          def get_object
            request(:get_object, Softlayer::Scale::Asset::Virtual::Guest)
          end

          def get_scale_group
            request(:get_scale_group, Softlayer::Scale::Group)
          end

          def get_virtual_guest
            request(:get_virtual_guest, Softlayer::Virtual::Guest)
          end

          def get_virtual_guest_id
            request(:get_virtual_guest_id, Integer)
          end

          class Representer < Softlayer::Scale::Asset::Representer
            include Representable::Hash
            include Representable::Coercion
            property :virtual_guest_id, type: Integer
          end
        end
      end
    end
  end
end
