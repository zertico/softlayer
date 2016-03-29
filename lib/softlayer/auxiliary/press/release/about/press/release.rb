module Softlayer
  module Auxiliary
    module Press
      class Release
        class About
          module Press
            class Release < Softlayer::Entity
              SERVICE = 'SoftLayer_Auxiliary_Press_Release_About_Press_Release'
              attr_accessor :id
              attr_accessor :press_release_about_id
              attr_accessor :press_release_id
              attr_accessor :sort_order
              attr_accessor :about_paragraph_count
              attr_accessor :press_release_count
              attr_accessor :about_paragraphs
              attr_accessor :press_releases

              def get_about_paragraphs
                request(:get_about_paragraphs, Array[Softlayer::Auxiliary::Press::Release::About])
              end

              def get_object
                request(:get_object, Softlayer::Auxiliary::Press::Release::About::Press::Release)
              end

              def get_press_releases
                request(:get_press_releases, Array[Softlayer::Auxiliary::Press::Release])
              end

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :id, type: Integer
                property :press_release_about_id, type: Integer
                property :press_release_id, type: Integer
                property :sort_order, type: Integer
                property :about_paragraph_count, type: BigDecimal
                property :press_release_count, type: BigDecimal
              end
            end
          end
        end
      end
    end
  end
end
