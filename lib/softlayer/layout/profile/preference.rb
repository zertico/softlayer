module Softlayer
  module Layout
    class Profile
      class Preference < Softlayer::Entity
        SERVICE = 'SoftLayer_Layout_Profile_Preference'
        attr_accessor :create_date
        attr_accessor :default_value_flag
        attr_accessor :layout_container_id
        attr_accessor :layout_item_id
        attr_accessor :layout_preference_id
        attr_accessor :layout_profile_id
        attr_accessor :modify_date
        attr_accessor :value
        attr_accessor :layout_container
        attr_accessor :layout_item
        attr_accessor :layout_preference
        attr_accessor :layout_profile

        def get_layout_container
          request(:get_layout_container, Softlayer::Layout::Container)
        end

        def get_layout_item
          request(:get_layout_item, Softlayer::Layout::Item)
        end

        def get_layout_preference
          request(:get_layout_preference, Softlayer::Layout::Preference)
        end

        def get_layout_profile
          request(:get_layout_profile, Softlayer::Layout::Profile)
        end

        def get_object
          request(:get_object, Softlayer::Layout::Profile::Preference)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :default_value_flag, type: Integer
          property :layout_container_id, type: Integer
          property :layout_item_id, type: Integer
          property :layout_preference_id, type: Integer
          property :layout_profile_id, type: Integer
          property :modify_date, type: DateTime
          property :value, type: String
        end
      end
    end
  end
end
