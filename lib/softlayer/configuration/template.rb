module Softlayer
  module Configuration
    class Template < Softlayer::Model
      SERVICE = 'SoftLayer_Configuration_Template'
      autoload :Attribute, 'softlayer/configuration/template/attribute'
      autoload :Section, 'softlayer/configuration/template/section'
      autoload :Type, 'softlayer/configuration/template/type'
      attr_accessor :account_id
      attr_accessor :create_date
      attr_accessor :description
      attr_accessor :id
      attr_accessor :item_id
      attr_accessor :modify_date
      attr_accessor :name
      attr_accessor :parent_id
      attr_accessor :user_record_id
      attr_accessor :configuration_section_count
      attr_accessor :configuration_template_reference_count
      attr_accessor :default_value_count
      attr_accessor :definition_count
      attr_accessor :account
      attr_accessor :configuration_sections
      attr_accessor :configuration_template_reference
      attr_accessor :default_values
      attr_accessor :definitions
      attr_accessor :item
      attr_accessor :linked_section_references
      attr_accessor :parent
      attr_accessor :user

      def copy_template(template_object = nil)
        message = {template_object: template_object}
        request(:copy_template, Softlayer::Configuration::Template, message)
      end

      def delete_object
        request(:delete_object, Boolean)
      end

      def edit_object(template_object = nil)
        message = {template_object: template_object}
        request(:edit_object, Boolean, message)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def self.get_all_objects
        request(:get_all_objects, Array[Softlayer::Configuration::Template])
      end

      def get_configuration_sections
        request(:get_configuration_sections, Array[Softlayer::Configuration::Template::Section])
      end

      def get_configuration_template_reference
        request(:get_configuration_template_reference, Array[Softlayer::Monitoring::Agent::Configuration::Template::Group::Reference])
      end

      def get_default_values
        request(:get_default_values, Array[Softlayer::Configuration::Template::Section::Definition::Value])
      end

      def get_definitions
        request(:get_definitions, Array[Softlayer::Configuration::Template::Section::Definition])
      end

      def get_item
        request(:get_item, Softlayer::Product::Item)
      end

      def get_linked_section_references
        request(:get_linked_section_references, Softlayer::Configuration::Template::Section::Reference)
      end

      def get_object
        request(:get_object, Softlayer::Configuration::Template)
      end

      def get_parent
        request(:get_parent, Softlayer::Configuration::Template)
      end

      def get_user
        request(:get_user, Softlayer::User::Customer)
      end

      def update_default_values(configuration_values = nil)
        message = {configuration_values: configuration_values}
        request(:update_default_values, Boolean, message)
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :create_date, type: DateTime
        property :description, type: String
        property :id, type: Integer
        property :item_id, type: Integer
        property :modify_date, type: DateTime
        property :name, type: String
        property :parent_id, type: Integer
        property :user_record_id, type: Integer
        property :configuration_section_count, type: BigDecimal
        property :configuration_template_reference_count, type: BigDecimal
        property :default_value_count, type: BigDecimal
        property :definition_count, type: BigDecimal
      end
    end
  end
end
