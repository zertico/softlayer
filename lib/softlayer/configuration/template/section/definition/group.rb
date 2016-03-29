module Softlayer
  module Configuration
    class Template
      class Section
        class Definition
          class Group < Softlayer::Entity
            SERVICE = 'SoftLayer_Configuration_Template_Section_Definition_Group'
            attr_accessor :create_date
            attr_accessor :description
            attr_accessor :id
            attr_accessor :name
            attr_accessor :sort_order
            attr_accessor :parent

            def self.get_all_groups
              request(:get_all_groups, Array[Softlayer::Configuration::Template::Section::Definition::Group])
            end

            def get_object
              request(:get_object, Softlayer::Configuration::Template::Section::Definition::Group)
            end

            def get_parent
              request(:get_parent, Softlayer::Configuration::Template::Section::Definition::Group)
            end

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :create_date, type: DateTime
              property :description, type: String
              property :id, type: Integer
              property :name, type: String
              property :sort_order, type: Integer
            end
          end
        end
      end
    end
  end
end
