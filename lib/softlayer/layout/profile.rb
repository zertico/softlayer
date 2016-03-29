module Softlayer
  module Layout
    class Profile < Softlayer::Entity
      SERVICE = 'SoftLayer_Layout_Profile'
      autoload :Containers, 'softlayer/layout/profile/containers'
      autoload :Customer, 'softlayer/layout/profile/customer'
      autoload :Preference, 'softlayer/layout/profile/preference'
      attr_accessor :active_flag
      attr_accessor :create_date
      attr_accessor :id
      attr_accessor :modify_date
      attr_accessor :name
      attr_accessor :user_record_id
      attr_accessor :layout_container_count
      attr_accessor :layout_preference_count
      attr_accessor :layout_containers
      attr_accessor :layout_preferences

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
        request(:get_object, Softlayer::Layout::Profile)
      end

      def modify_preference(template_object = nil)
        message = {template_object: template_object}
        request(:modify_preference, Softlayer::Layout::Profile::Preference, message)
      end

      def modify_preferences(layout_preference_objects = nil)
        message = {layout_preference_objects: layout_preference_objects}
        request(:modify_preferences, Array[Softlayer::Layout::Profile::Preference], message)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :active_flag, type: Integer
        property :create_date, type: DateTime
        property :id, type: Integer
        property :modify_date, type: DateTime
        property :name, type: String
        property :user_record_id, type: Integer
        property :layout_container_count, type: BigDecimal
        property :layout_preference_count, type: BigDecimal
      end
    end
  end
end
