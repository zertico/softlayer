module Softlayer
  module Configuration
    class Template
      class Section
        class Profile < Softlayer::Entity
          SERVICE = 'SoftLayer_Configuration_Template_Section_Profile'
          attr_accessor :agent_id
          attr_accessor :create_date
          attr_accessor :id
          attr_accessor :name
          attr_accessor :section_id
          attr_accessor :configuration_section
          attr_accessor :monitoring_agent

          def get_configuration_section
            request(:get_configuration_section, Softlayer::Configuration::Template::Section)
          end

          def get_monitoring_agent
            request(:get_monitoring_agent, Softlayer::Monitoring::Agent)
          end

          def get_object
            request(:get_object, Softlayer::Configuration::Template::Section::Profile)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :agent_id, type: Integer
            property :create_date, type: DateTime
            property :id, type: Integer
            property :name, type: String
            property :section_id, type: Integer
          end
        end
      end
    end
  end
end
