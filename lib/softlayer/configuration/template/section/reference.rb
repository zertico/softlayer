module Softlayer
  module Configuration
    class Template
      class Section
        class Reference < Softlayer::Entity
          SERVICE = 'SoftLayer_Configuration_Template_Section_Reference'
          attr_accessor :create_date
          attr_accessor :id
          attr_accessor :modify_date
          attr_accessor :section_id
          attr_accessor :template_id
          attr_accessor :section
          attr_accessor :template

          def get_object
            request(:get_object, Softlayer::Configuration::Template::Section::Reference)
          end

          def get_section
            request(:get_section, Softlayer::Configuration::Template::Section)
          end

          def get_template
            request(:get_template, Softlayer::Configuration::Template)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :create_date, type: DateTime
            property :id, type: Integer
            property :modify_date, type: DateTime
            property :section_id, type: Integer
            property :template_id, type: Integer
          end
        end
      end
    end
  end
end
