module Softlayer
  module Monitoring
    class Agent < Softlayer::Entity
      SERVICE = 'SoftLayer_Monitoring_Agent'
      autoload :Status, 'softlayer/monitoring/agent/status'
      autoload :Configuration, 'softlayer/monitoring/agent/configuration'
      attr_accessor :configuration_template_id
      attr_accessor :create_date
      attr_accessor :id
      attr_accessor :modify_date
      attr_accessor :name
      attr_accessor :remote_monitoring_agent_flag
      attr_accessor :robot_id
      attr_accessor :status_id
      attr_accessor :configuration_profile_count
      attr_accessor :configuration_value_count
      attr_accessor :agent_status
      attr_accessor :configuration_profiles
      attr_accessor :configuration_template
      attr_accessor :configuration_values
      attr_accessor :hardware
      attr_accessor :product_item
      attr_accessor :software_description
      attr_accessor :status_name
      attr_accessor :virtual_guest

      def activate
        request(:activate, Boolean)
      end

      # configuration_values
      def add_configuration_profile(message)
        request(:add_configuration_profile, Softlayer::Provisioning::Version1::Transaction, message)
      end

      # configuration_values
      def apply_configuration_values(message)
        request(:apply_configuration_values, Softlayer::Provisioning::Version1::Transaction, message)
      end

      def deactivate
        request(:deactivate, Boolean)
      end

      # section_id
      # profile_id
      def delete_configuration_profile(message)
        request(:delete_configuration_profile, Boolean, message)
      end

      # configuration_template_id
      def deploy_monitoring_agent(message)
        request(:deploy_monitoring_agent, Softlayer::Provisioning::Version1::Transaction, message)
      end

      def get_active_alarm_subscribers
        request(:get_active_alarm_subscribers, Array[Softlayer::Notification::User::Subscriber])
      end

      def get_agent_status
        request(:get_agent_status, Softlayer::Monitoring::Agent::Status)
      end

      def get_available_configuration_templates
        request(:get_available_configuration_templates, Array[Softlayer::Configuration::Template])
      end

      # configuration_definition_id
      # config_values
      def get_available_configuration_values(message)
        request(:get_available_configuration_values, Array[Softlayer::Monitoring::Agent::Configuration::Value], message)
      end

      def get_configuration_profiles
        request(:get_configuration_profiles, Array[Softlayer::Configuration::Template::Section::Profile])
      end

      def get_configuration_template
        request(:get_configuration_template, Softlayer::Configuration::Template)
      end

      def get_configuration_values
        request(:get_configuration_values, Array[Softlayer::Monitoring::Agent::Configuration::Value])
      end

      def get_eligible_alarm_subscibers
        request(:get_eligible_alarm_subscibers, Array[Softlayer::User::Customer])
      end

      # configuration_values
      # begin_date
      # end_date
      def get_graph(message)
        request(:get_graph, Softlayer::Container::Monitoring::Graph::Outputs, message)
      end

      # metric_data_types
      # start_date
      # end_date
      def get_graph_data(message)
        request(:get_graph_data, Array[Softlayer::Metric::Tracking::Object::Data], message)
      end

      def get_hardware
        request(:get_hardware, Softlayer::Hardware)
      end

      def get_object
        request(:get_object, Softlayer::Monitoring::Agent)
      end

      def get_product_item
        request(:get_product_item, Softlayer::Product::Item)
      end

      def get_software_description
        request(:get_software_description, Softlayer::Software::Description)
      end

      def get_status_name
        request(:get_status_name, String)
      end

      def get_virtual_guest
        request(:get_virtual_guest, Softlayer::Virtual::Guest)
      end

      # user_record_id
      def remove_active_alarm_subscriber(message)
        request(:remove_active_alarm_subscriber, Boolean, message)
      end

      def remove_all_alarm_subscribers
        request(:remove_all_alarm_subscribers, Boolean)
      end

      def restart_monitoring_agent
        request(:restart_monitoring_agent, Boolean)
      end

      # user_record_id
      def set_active_alarm_subscriber(message)
        request(:set_active_alarm_subscriber, Boolean, message)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :configuration_template_id, type: Integer
        property :create_date, type: DateTime
        property :id, type: Integer
        property :modify_date, type: DateTime
        property :name, type: String
        property :remote_monitoring_agent_flag, type: Boolean
        property :robot_id, type: Integer
        property :status_id, type: Integer
        property :configuration_profile_count, type: BigDecimal
        property :configuration_value_count, type: BigDecimal
        property :status_name, type: String
      end
    end
  end
end
