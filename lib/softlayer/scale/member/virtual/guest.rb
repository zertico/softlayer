module Softlayer
  module Scale
    class Member
      module Virtual
        class Guest < Softlayer::Scale::Member
          SERVICE = 'SoftLayer_Scale_Member_Virtual_Guest'
          attr_accessor :virtual_guest
          attr_accessor :virtual_guest_id

          def delete_object
            request(:delete_object, Boolean)
          end

          def get_object
            request(:get_object, Softlayer::Scale::Member::Virtual::Guest)
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

          class Representer < Softlayer::Scale::Member::Representer
            include Representable::Hash
            include Representable::Coercion
            property :virtual_guest_id, type: Integer
          end
        end
      end
    end
  end
end
