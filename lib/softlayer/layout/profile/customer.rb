module Softlayer
  module Layout
    class Profile
      class Customer < Softlayer::Layout::Profile
        SERVICE = 'SoftLayer_Layout_Profile_Customer'
        attr_accessor :user_record

        # template_object
        def self.create_object(message)
          request(:create_object, Boolean, message)
        end

        def delete_object
          request(:delete_object, Boolean)
        end

        # template_object
        def edit_object(message)
          request(:edit_object, Boolean, message)
        end

        def get_layout_containers
          request(:get_layout_containers, Array[Softlayer::Layout::Container])
        end

        def get_layout_preferences
          request(:get_layout_preferences, Array[Softlayer::Layout::Profile::Preference])
        end

        def get_object
          request(:get_object, Softlayer::Layout::Profile::Customer)
        end

        def get_user_record
          request(:get_user_record, Softlayer::User::Customer)
        end

        # template_object
        def modify_preference(message)
          request(:modify_preference, Softlayer::Layout::Profile::Preference, message)
        end

        # layout_preference_objects
        def modify_preferences(message)
          request(:modify_preferences, Array[Softlayer::Layout::Profile::Preference], message)
        end

        class Representer < Softlayer::Layout::Profile::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
