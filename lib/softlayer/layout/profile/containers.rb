module Softlayer
  module Layout
    class Profile
      class Containers < Softlayer::Model
        SERVICE = 'SoftLayer_Layout_Profile_Containers'
        attr_accessor :create_date
        attr_accessor :id
        attr_accessor :layout_container_id
        attr_accessor :layout_profile_id
        attr_accessor :modify_date
        attr_accessor :layout_container_type
        attr_accessor :layout_profile

        def self.create_object(template_object = nil)
          message = {template_object: template_object}
          request(:create_object, Boolean, message)
        end

        def edit_object(template_object = nil)
          message = {template_object: template_object}
          request(:edit_object, Boolean, message)
        end

        def get_layout_container_type
          request(:get_layout_container_type, Softlayer::Layout::Container)
        end

        def get_layout_profile
          request(:get_layout_profile, Softlayer::Layout::Profile)
        end

        def get_object
          request(:get_object, Softlayer::Layout::Profile::Containers)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :id, type: Integer
          property :layout_container_id, type: Integer
          property :layout_profile_id, type: Integer
          property :modify_date, type: DateTime
        end
      end
    end
  end
end
