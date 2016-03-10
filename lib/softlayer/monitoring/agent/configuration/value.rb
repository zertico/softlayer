module Softlayer
  module Monitoring
    class Agent
      module Configuration
        class Value < Softlayer::Model
          SERVICE = 'SoftLayer_Monitoring_Agent_Configuration_Value'
          attr_accessor :agent_id
          attr_accessor :configuration_definition_id
          attr_accessor :description
          attr_accessor :id
          attr_accessor :profile_id
          attr_accessor :value
          attr_accessor :definition
          attr_accessor :metric_data_type
          attr_accessor :monitoring_agent
          attr_accessor :profile

          def get_definition
            request(:get_definition, Softlayer::Configuration::Template::Section::Definition)
          end

          def get_metric_data_type
            request(:get_metric_data_type, Softlayer::Container::Metric::Data::Type)
          end

          def get_monitoring_agent
            request(:get_monitoring_agent, Softlayer::Monitoring::Agent)
          end

          def get_object
            request(:get_object, Softlayer::Monitoring::Agent::Configuration::Value)
          end

          def get_profile
            request(:get_profile, Softlayer::Configuration::Template::Section::Profile)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :agent_id, type: Integer
            property :configuration_definition_id, type: Integer
            property :description, type: String
            property :id, type: Integer
            property :profile_id, type: Integer
            property :value, type: String
          end
        end
      end
    end
  end
end
