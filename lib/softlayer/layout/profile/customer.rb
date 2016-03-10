module Softlayer
  module Layout
    class Profile
      class Customer < Softlayer::Layout::Profile
        SERVICE = 'SoftLayer_Layout_Profile_Customer'
        attr_accessor :user_record

        def self.create_object(template_object = nil)
          message = {template_object: template_object}
          request(:create_object, Boolean, message)
        end

        def delete_object
          request(:delete_object, Boolean)
        end

        def edit_object(template_object = nil)
          message = {template_object: template_object}
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

        def modify_preference(template_object = nil)
          message = {template_object: template_object}
          request(:modify_preference, Softlayer::Layout::Profile::Preference, message)
        end

        def modify_preferences(layout_preference_objects = nil)
          message = {layout_preference_objects: layout_preference_objects}
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
