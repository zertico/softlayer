module Softlayer
  module Monitoring
    class Robot < Softlayer::Model
      SERVICE = 'SoftLayer_Monitoring_Robot'
      autoload :Status, 'softlayer/monitoring/robot/status'
      attr_accessor :account_id
      attr_accessor :id
      attr_accessor :name
      attr_accessor :status_id
      attr_accessor :monitoring_agent_count
      attr_accessor :account
      attr_accessor :monitoring_agents
      attr_accessor :robot_status
      attr_accessor :software_component

      def check_connection
        request(:check_connection, Boolean)
      end

      def deploy_monitoring_agents(configuration_template_group = nil)
        message = {configuration_template_group: configuration_template_group}
        request(:deploy_monitoring_agents, Softlayer::Provisioning::Version1::Transaction, message)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def get_available_configuration_groups
        request(:get_available_configuration_groups, Array[Softlayer::Monitoring::Agent::Configuration::Template::Group])
      end

      def get_monitoring_agents
        request(:get_monitoring_agents, Array[Softlayer::Monitoring::Agent])
      end

      def get_object
        request(:get_object, Softlayer::Monitoring::Robot)
      end

      def get_robot_status
        request(:get_robot_status, Softlayer::Monitoring::Robot::Status)
      end

      def get_software_component
        request(:get_software_component, Softlayer::Software::Component)
      end

      def reset_status
        request(:reset_status, Boolean)
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :id, type: Integer
        property :name, type: String
        property :status_id, type: Integer
        property :monitoring_agent_count, type: BigDecimal
      end
    end
  end
end
