module Softlayer
  module Monitoring
    class Agent
      module Configuration
        module Template
          class Group < Softlayer::Entity
            SERVICE = 'SoftLayer_Monitoring_Agent_Configuration_Template_Group'
            autoload :Reference, 'softlayer/monitoring/agent/configuration/template/group/reference'
            attr_accessor :account_id
            attr_accessor :create_date
            attr_accessor :description
            attr_accessor :id
            attr_accessor :item_id
            attr_accessor :modify_date
            attr_accessor :name
            attr_accessor :configuration_template_count
            attr_accessor :configuration_template_reference_count
            attr_accessor :account
            attr_accessor :configuration_template_references
            attr_accessor :configuration_templates
            attr_accessor :item

            def self.create_object(template_object = nil)
              message = {template_object: template_object}
              request(:create_object, Softlayer::Monitoring::Agent::Configuration::Template::Group, message)
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
              request(:get_all_objects, Array[Softlayer::Monitoring::Agent::Configuration::Template::Group])
            end

            def self.get_configuration_groups(package_id = nil)
              message = {package_id: package_id}
              request(:get_configuration_groups, Array[Softlayer::Monitoring::Agent::Configuration::Template::Group], message)
            end

            def get_configuration_template_references
              request(:get_configuration_template_references, Array[Softlayer::Monitoring::Agent::Configuration::Template::Group::Reference])
            end

            def get_configuration_templates
              request(:get_configuration_templates, Array[Softlayer::Configuration::Template])
            end

            def get_item
              request(:get_item, Softlayer::Product::Item)
            end

            def get_object
              request(:get_object, Softlayer::Monitoring::Agent::Configuration::Template::Group)
            end

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :account_id, type: Integer
              property :create_date, type: DateTime
              property :description, type: String
              property :id, type: Integer
              property :item_id, type: Integer
              property :modify_date, type: DateTime
              property :name, type: String
              property :configuration_template_count, type: BigDecimal
              property :configuration_template_reference_count, type: BigDecimal
            end
          end
        end
      end
    end
  end
end
