module Softlayer
  module Auxiliary
    module Press
      class Release < Softlayer::Model
        SERVICE = 'SoftLayer_Auxiliary_Press_Release'
        autoload :About, 'softlayer/auxiliary/press/release/about'
        autoload :Contact, 'softlayer/auxiliary/press/release/contact'
        autoload :Content, 'softlayer/auxiliary/press/release/content'
        autoload :Media, 'softlayer/auxiliary/press/release/media'
        attr_accessor :id
        attr_accessor :publish_date
        attr_accessor :release_location
        attr_accessor :sub_title
        attr_accessor :title
        attr_accessor :website_highlight_flag
        attr_accessor :about_count
        attr_accessor :contact_count
        attr_accessor :media_partner_count
        attr_accessor :about
        attr_accessor :contacts
        attr_accessor :media_partners
        attr_accessor :press_release_content

        def get_about
          request(:get_about, Array[Softlayer::Auxiliary::Press::Release::About::Press::Release])
        end

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::Auxiliary::Press::Release])
        end

        def get_contacts
          request(:get_contacts, Array[Softlayer::Auxiliary::Press::Release::Contact::Press::Release])
        end

        def get_media_partners
          request(:get_media_partners, Array[Softlayer::Auxiliary::Press::Release::Media::Partner::Press::Release])
        end

        def get_object
          request(:get_object, Softlayer::Auxiliary::Press::Release)
        end

        def get_press_release_content
          request(:get_press_release_content, Softlayer::Auxiliary::Press::Release::Content)
        end

        def get_rendered_press_release
          request(:get_rendered_press_release, Array[Softlayer::Auxiliary::Press::Release])
        end

        def self.get_rendered_press_releases(result_limit = nil, year = nil)
          message = {result_limit: result_limit, year: year}
          request(:get_rendered_press_releases, Array[Softlayer::Auxiliary::Press::Release], message)
        end

        def self.get_website_highlight_press_releases
          request(:get_website_highlight_press_releases, Array[Softlayer::Auxiliary::Press::Release])
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :id, type: Integer
          property :publish_date, type: DateTime
          property :release_location, type: String
          property :sub_title, type: String
          property :title, type: String
          property :website_highlight_flag, type: Boolean
          property :about_count, type: BigDecimal
          property :contact_count, type: BigDecimal
          property :media_partner_count, type: BigDecimal
        end
      end
    end
  end
end
