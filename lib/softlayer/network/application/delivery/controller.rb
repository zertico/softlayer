module Softlayer
  class Network
    module Application
      module Delivery
        class Controller < Softlayer::Entity
          SERVICE = 'SoftLayer_Network_Application_Delivery_Controller'
          autoload :Type, 'softlayer/network/application/delivery/controller/type'
          autoload :Configuration, 'softlayer/network/application/delivery/controller/configuration'
          autoload :LoadBalancer, 'softlayer/network/application/delivery/controller/load_balancer'
          attr_accessor :account_id
          attr_accessor :create_date
          attr_accessor :id
          attr_accessor :modify_date
          attr_accessor :name
          attr_accessor :notes
          attr_accessor :type_id
          attr_accessor :configuration_history_count
          attr_accessor :load_balancer_count
          attr_accessor :network_vlan_count
          attr_accessor :subnet_count
          attr_accessor :tag_reference_count
          attr_accessor :virtual_ip_address_count
          attr_accessor :account
          attr_accessor :average_daily_public_bandwidth_usage
          attr_accessor :billing_item
          attr_accessor :configuration_history
          attr_accessor :datacenter
          attr_accessor :description
          attr_accessor :license_expiration_date
          attr_accessor :load_balancers
          attr_accessor :managed_resource_flag
          attr_accessor :management_ip_address
          attr_accessor :network_vlan
          attr_accessor :network_vlans
          attr_accessor :outbound_public_bandwidth_usage
          attr_accessor :password
          attr_accessor :primary_ip_address
          attr_accessor :projected_public_bandwidth_usage
          attr_accessor :subnets
          attr_accessor :tag_references
          attr_accessor :type
          attr_accessor :virtual_ip_addresses

          def create_live_load_balancer(load_balancer = nil)
            message = {load_balancer: load_balancer}
            request(:create_live_load_balancer, Boolean, message)
          end

          def delete_live_load_balancer(load_balancer = nil)
            message = {load_balancer: load_balancer}
            request(:delete_live_load_balancer, Boolean, message)
          end

          def delete_live_load_balancer_service(service = nil)
            message = {service: service}
            request(:delete_live_load_balancer_service, Boolean, message)
          end

          def edit_object(template_object = nil)
            message = {template_object: template_object}
            request(:edit_object, Boolean, message)
          end

          def get_account
            request(:get_account, Softlayer::Account)
          end

          def get_average_daily_public_bandwidth_usage
            request(:get_average_daily_public_bandwidth_usage, Float)
          end

          def get_bandwidth_data_by_date(start_date_time = nil, end_date_time = nil, network_type = nil)
            message = {start_date_time: start_date_time, end_date_time: end_date_time, network_type: network_type}
            request(:get_bandwidth_data_by_date, Array[Softlayer::Metric::Tracking::Object::Data], message)
          end

          def get_bandwidth_image_by_date(start_date_time = nil, end_date_time = nil, network_type = nil)
            message = {start_date_time: start_date_time, end_date_time: end_date_time, network_type: network_type}
            request(:get_bandwidth_image_by_date, Softlayer::Container::Bandwidth::GraphOutputs, message)
          end

          def get_billing_item
            request(:get_billing_item, Softlayer::Billing::Item::Network::Application::Delivery::Controller)
          end

          def get_configuration_history
            request(:get_configuration_history, Array[Softlayer::Network::Application::Delivery::Controller::Configuration::History])
          end

          def get_custom_bandwidth_data_by_date(graph_data = nil)
            message = {graph_data: graph_data}
            request(:get_custom_bandwidth_data_by_date, Softlayer::Container::Graph, message)
          end

          def get_datacenter
            request(:get_datacenter, Softlayer::Location)
          end

          def get_description
            request(:get_description, String)
          end

          def get_license_expiration_date
            request(:get_license_expiration_date, DateTime)
          end

          def get_live_load_balancer_service_graph_image(service = nil, graph_type = nil, metric = nil)
            message = {service: service, graph_type: graph_type, metric: metric}
            request(:get_live_load_balancer_service_graph_image, Softlayer::Base64Binary, message)
          end

          def get_load_balancers
            request(:get_load_balancers, Array[Softlayer::Network::LoadBalancer::VirtualIpAddress])
          end

          def get_managed_resource_flag
            request(:get_managed_resource_flag, Boolean)
          end

          def get_management_ip_address
            request(:get_management_ip_address, String)
          end

          def get_network_vlan
            request(:get_network_vlan, Softlayer::Network::Vlan)
          end

          def get_network_vlans
            request(:get_network_vlans, Array[Softlayer::Network::Vlan])
          end

          def get_object
            request(:get_object, Softlayer::Network::Application::Delivery::Controller)
          end

          def get_outbound_public_bandwidth_usage
            request(:get_outbound_public_bandwidth_usage, Float)
          end

          def get_password
            request(:get_password, Softlayer::Software::Component::Password)
          end

          def get_primary_ip_address
            request(:get_primary_ip_address, String)
          end

          def get_projected_public_bandwidth_usage
            request(:get_projected_public_bandwidth_usage, Float)
          end

          def get_subnets
            request(:get_subnets, Array[Softlayer::Network::Subnet])
          end

          def get_tag_references
            request(:get_tag_references, Array[Softlayer::Tag::Reference])
          end

          def get_type
            request(:get_type, Softlayer::Network::Application::Delivery::Controller::Type)
          end

          def get_virtual_ip_addresses
            request(:get_virtual_ip_addresses, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::VirtualIpAddress])
          end

          def restore_base_configuration
            request(:restore_base_configuration, Boolean)
          end

          def restore_configuration(configuration_history_id = nil)
            message = {configuration_history_id: configuration_history_id}
            request(:restore_configuration, Boolean, message)
          end

          def save_current_configuration(notes = nil)
            message = {notes: notes}
            request(:save_current_configuration, Softlayer::Network::Application::Delivery::Controller::Configuration::History, message)
          end

          def update_live_load_balancer(load_balancer = nil)
            message = {load_balancer: load_balancer}
            request(:update_live_load_balancer, Boolean, message)
          end

          def update_net_scaler_license
            request(:update_net_scaler_license, Softlayer::Provisioning::Version1::Transaction)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :account_id, type: Integer
            property :create_date, type: DateTime
            property :id, type: Integer
            property :modify_date, type: DateTime
            property :name, type: String
            property :notes, type: String
            property :type_id, type: Integer
            property :configuration_history_count, type: BigDecimal
            property :load_balancer_count, type: BigDecimal
            property :network_vlan_count, type: BigDecimal
            property :subnet_count, type: BigDecimal
            property :tag_reference_count, type: BigDecimal
            property :virtual_ip_address_count, type: BigDecimal
            property :average_daily_public_bandwidth_usage, type: Float
            property :description, type: String
            property :license_expiration_date, type: DateTime
            property :managed_resource_flag, type: Boolean
            property :management_ip_address, type: String
            property :outbound_public_bandwidth_usage, type: Float
            property :primary_ip_address, type: String
            property :projected_public_bandwidth_usage, type: Float
          end
        end
      end
    end
  end
end
