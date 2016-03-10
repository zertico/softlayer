module Softlayer
  module Auxiliary
    module Press
      class Release
        module Media
          class Partner
            module Press
              class Release < Softlayer::Model
                SERVICE = 'SoftLayer_Auxiliary_Press_Release_Media_Partner_Press_Release'
                attr_accessor :id
                attr_accessor :media_partner_id
                attr_accessor :press_release_id
                attr_accessor :media_partner_count
                attr_accessor :press_release_count
                attr_accessor :media_partners
                attr_accessor :press_releases

                def get_media_partners
                  request(:get_media_partners, Array[Softlayer::Auxiliary::Press::Release::Media::Partner])
                end

                def get_object
                  request(:get_object, Softlayer::Auxiliary::Press::Release::Media::Partner::Press::Release)
                end

                def get_press_releases
                  request(:get_press_releases, Array[Softlayer::Auxiliary::Press::Release])
                end

                class Representer < Representable::Decorator
                  include Representable::Hash
                  include Representable::Coercion
                  property :id, type: Integer
                  property :media_partner_id, type: Integer
                  property :press_release_id, type: Integer
                  property :media_partner_count, type: BigDecimal
                  property :press_release_count, type: BigDecimal
                end
              end
            end
          end
        end
      end
    end
  end
end
