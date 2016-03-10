module Softlayer
  module Auxiliary
    module Press
      class Release
        class Contact
          module Press
            class Release < Softlayer::Model
              SERVICE = 'SoftLayer_Auxiliary_Press_Release_Contact_Press_Release'
              attr_accessor :id
              attr_accessor :press_release_contact_id
              attr_accessor :press_release_id
              attr_accessor :sort_order
              attr_accessor :contact_count
              attr_accessor :press_release_count
              attr_accessor :contacts
              attr_accessor :press_releases

              def get_contacts
                request(:get_contacts, Array[Softlayer::Auxiliary::Press::Release::Contact])
              end

              def get_object
                request(:get_object, Softlayer::Auxiliary::Press::Release::Contact::Press::Release)
              end

              def get_press_releases
                request(:get_press_releases, Array[Softlayer::Auxiliary::Press::Release])
              end

              class Representer < Representable::Decorator
                include Representable::Hash
                include Representable::Coercion
                property :id, type: Integer
                property :press_release_contact_id, type: Integer
                property :press_release_id, type: Integer
                property :sort_order, type: Integer
                property :contact_count, type: BigDecimal
                property :press_release_count, type: BigDecimal
              end
            end
          end
        end
      end
    end
  end
end
