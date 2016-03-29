module Softlayer
  module Configuration
    class Template
      class Section < Softlayer::Entity
        SERVICE = 'SoftLayer_Configuration_Template_Section'
        autoload :Attribute, 'softlayer/configuration/template/section/attribute'
        autoload :Definition, 'softlayer/configuration/template/section/definition'
        autoload :Profile, 'softlayer/configuration/template/section/profile'
        autoload :Reference, 'softlayer/configuration/template/section/reference'
        autoload :Type, 'softlayer/configuration/template/section/type'
        attr_accessor :create_date
        attr_accessor :description
        attr_accessor :id
        attr_accessor :linked_template_id
        attr_accessor :modify_date
        attr_accessor :name
        attr_accessor :parent_id
        attr_accessor :sort
        attr_accessor :template_id
        attr_accessor :type_id
        attr_accessor :definition_count
        attr_accessor :profile_count
        attr_accessor :sub_section_count
        attr_accessor :definitions
        attr_accessor :disallowed_deletion_flag
        attr_accessor :linked_template
        attr_accessor :linked_template_reference
        attr_accessor :profiles
        attr_accessor :section_type
        attr_accessor :section_type_name
        attr_accessor :sub_sections
        attr_accessor :template

        def get_definitions
          request(:get_definitions, Array[Softlayer::Configuration::Template::Section::Definition])
        end

        def get_disallowed_deletion_flag
          request(:get_disallowed_deletion_flag, Boolean)
        end

        def get_linked_template
          request(:get_linked_template, Softlayer::Configuration::Template)
        end

        def get_linked_template_reference
          request(:get_linked_template_reference, Softlayer::Configuration::Template::Section::Reference)
        end

        def get_object
          request(:get_object, Softlayer::Configuration::Template::Section)
        end

        def get_profiles
          request(:get_profiles, Array[Softlayer::Configuration::Template::Section::Profile])
        end

        def get_section_type
          request(:get_section_type, Softlayer::Configuration::Template::Section::Type)
        end

        def get_section_type_name
          request(:get_section_type_name, String)
        end

        def get_sub_sections
          request(:get_sub_sections, Array[Softlayer::Configuration::Template::Section])
        end

        def get_template
          request(:get_template, Softlayer::Configuration::Template)
        end

        def has_sub_sections
          request(:has_sub_sections, Boolean)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :description, type: String
          property :id, type: Integer
          property :linked_template_id, type: String
          property :modify_date, type: DateTime
          property :name, type: String
          property :parent_id, type: Integer
          property :sort, type: Integer
          property :template_id, type: String
          property :type_id, type: Integer
          property :definition_count, type: BigDecimal
          property :profile_count, type: BigDecimal
          property :sub_section_count, type: BigDecimal
          property :disallowed_deletion_flag, type: Boolean
          property :section_type_name, type: String
        end
      end
    end
  end
end
