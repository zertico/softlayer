module Softlayer
  class Network
    module Bandwidth
      module Version1
        class Allotment < Softlayer::Model
          SERVICE = 'SoftLayer_Network_Bandwidth_Version1_Allotment'
          autoload :Detail, 'softlayer/network/bandwidth/version1/allotment/detail'
          attr_accessor :account_id
          attr_accessor :bandwidth_allotment_type_id
          attr_accessor :create_date
          attr_accessor :end_date
          attr_accessor :id
          attr_accessor :location_group_id
          attr_accessor :name
          attr_accessor :service_provider_id
          attr_accessor :active_detail_count
          attr_accessor :application_delivery_controller_count
          attr_accessor :bare_metal_instance_count
          attr_accessor :billing_cycle_bandwidth_usage_count
          attr_accessor :detail_count
          attr_accessor :hardware_count
          attr_accessor :managed_bare_metal_instance_count
          attr_accessor :managed_hardware_count
          attr_accessor :managed_virtual_guest_count
          attr_accessor :private_network_only_hardware_count
          attr_accessor :virtual_guest_count
          attr_accessor :account
          attr_accessor :active_details
          attr_accessor :application_delivery_controllers
          attr_accessor :average_daily_public_bandwidth_usage
          attr_accessor :bare_metal_instances
          attr_accessor :billing_cycle_bandwidth_usage
          attr_accessor :billing_cycle_private_bandwidth_usage
          attr_accessor :billing_cycle_public_bandwidth_usage
          attr_accessor :billing_cycle_public_usage_total
          attr_accessor :billing_item
          attr_accessor :current_bandwidth_summary
          attr_accessor :details
          attr_accessor :hardware
          attr_accessor :inbound_public_bandwidth_usage
          attr_accessor :location_group
          attr_accessor :managed_bare_metal_instances
          attr_accessor :managed_hardware
          attr_accessor :managed_virtual_guests
          attr_accessor :metric_tracking_object
          attr_accessor :metric_tracking_object_id
          attr_accessor :outbound_public_bandwidth_usage
          attr_accessor :over_bandwidth_allocation_flag
          attr_accessor :private_network_only_hardware
          attr_accessor :projected_over_bandwidth_allocation_flag
          attr_accessor :projected_public_bandwidth_usage
          attr_accessor :service_provider
          attr_accessor :total_bandwidth_allocated
          attr_accessor :virtual_guests

          def self.create_object(template_object = nil)
            message = {template_object: template_object}
            request(:create_object, Boolean, message)
          end

          def edit_object(template_object = nil)
            message = {template_object: template_object}
            request(:edit_object, Boolean, message)
          end

          def get_account
            request(:get_account, Softlayer::Account)
          end

          def get_active_details
            request(:get_active_details, Array[Softlayer::Network::Bandwidth::Version1::Allotment::Detail])
          end

          def get_application_delivery_controllers
            request(:get_application_delivery_controllers, Array[Softlayer::Network::Application::Delivery::Controller])
          end

          def get_average_daily_public_bandwidth_usage
            request(:get_average_daily_public_bandwidth_usage, Float)
          end

          def get_backend_bandwidth_by_hour(date = nil)
            message = {date: date}
            request(:get_backend_bandwidth_by_hour, Array[Softlayer::Container::Network::Bandwidth::Version1::Usage], message)
          end

          def get_backend_bandwidth_use(start_date = nil, end_date = nil)
            message = {start_date: start_date, end_date: end_date}
            request(:get_backend_bandwidth_use, Array[Softlayer::Network::Bandwidth::Version1::Usage::Detail], message)
          end

          def get_bandwidth_for_date_range(start_date = nil, end_date = nil)
            message = {start_date: start_date, end_date: end_date}
            request(:get_bandwidth_for_date_range, Array[Softlayer::Metric::Tracking::Object::Data], message)
          end

          def get_bandwidth_image(network_type = nil, snapshot_range = nil, draw = nil, date_specified = nil)
            message = {network_type: network_type, snapshot_range: snapshot_range, draw: draw, date_specified: date_specified}
            request(:get_bandwidth_image, Softlayer::Container::Bandwidth::GraphOutputs, message)
          end

          def get_bare_metal_instances
            request(:get_bare_metal_instances, Array[Softlayer::Hardware])
          end

          def get_billing_cycle_bandwidth_usage
            request(:get_billing_cycle_bandwidth_usage, Array[Softlayer::Network::Bandwidth::Usage])
          end

          def get_billing_cycle_private_bandwidth_usage
            request(:get_billing_cycle_private_bandwidth_usage, Softlayer::Network::Bandwidth::Usage)
          end

          def get_billing_cycle_public_bandwidth_usage
            request(:get_billing_cycle_public_bandwidth_usage, Softlayer::Network::Bandwidth::Usage)
          end

          def get_billing_cycle_public_usage_total
            request(:get_billing_cycle_public_usage_total, Integer)
          end

          def get_billing_item
            request(:get_billing_item, Softlayer::Billing::Item)
          end

          def get_current_bandwidth_summary
            request(:get_current_bandwidth_summary, Softlayer::Metric::Tracking::Object::Bandwidth::Summary)
          end

          def get_custom_bandwidth_data_by_date(graph_data = nil)
            message = {graph_data: graph_data}
            request(:get_custom_bandwidth_data_by_date, Softlayer::Container::Graph, message)
          end

          def get_details
            request(:get_details, Array[Softlayer::Network::Bandwidth::Version1::Allotment::Detail])
          end

          def get_frontend_bandwidth_by_hour(date = nil)
            message = {date: date}
            request(:get_frontend_bandwidth_by_hour, Array[Softlayer::Container::Network::Bandwidth::Version1::Usage], message)
          end

          def get_frontend_bandwidth_use(start_date = nil, end_date = nil)
            message = {start_date: start_date, end_date: end_date}
            request(:get_frontend_bandwidth_use, Array[Softlayer::Network::Bandwidth::Version1::Usage::Detail], message)
          end

          def get_hardware
            request(:get_hardware, Array[Softlayer::Hardware])
          end

          def get_inbound_public_bandwidth_usage
            request(:get_inbound_public_bandwidth_usage, Float)
          end

          def get_location_group
            request(:get_location_group, Softlayer::Location::Group)
          end

          def get_managed_bare_metal_instances
            request(:get_managed_bare_metal_instances, Array[Softlayer::Hardware])
          end

          def get_managed_hardware
            request(:get_managed_hardware, Array[Softlayer::Hardware])
          end

          def get_managed_virtual_guests
            request(:get_managed_virtual_guests, Array[Softlayer::Virtual::Guest])
          end

          def get_metric_tracking_object
            request(:get_metric_tracking_object, Softlayer::Metric::Tracking::Object::VirtualDedicatedRack)
          end

          def get_metric_tracking_object_id
            request(:get_metric_tracking_object_id, Integer)
          end

          def get_object
            request(:get_object, Softlayer::Network::Bandwidth::Version1::Allotment)
          end

          def get_outbound_public_bandwidth_usage
            request(:get_outbound_public_bandwidth_usage, Float)
          end

          def get_over_bandwidth_allocation_flag
            request(:get_over_bandwidth_allocation_flag, Integer)
          end

          def get_private_network_only_hardware
            request(:get_private_network_only_hardware, Array[Softlayer::Hardware])
          end

          def get_projected_over_bandwidth_allocation_flag
            request(:get_projected_over_bandwidth_allocation_flag, Integer)
          end

          def get_projected_public_bandwidth_usage
            request(:get_projected_public_bandwidth_usage, Float)
          end

          def get_service_provider
            request(:get_service_provider, Softlayer::Service::Provider)
          end

          def get_total_bandwidth_allocated
            request(:get_total_bandwidth_allocated, BigDecimal)
          end

          def get_virtual_guests
            request(:get_virtual_guests, Array[Softlayer::Virtual::Guest])
          end

          def new_get_bandwidth_image(network_type = nil, snapshot_range = nil, draw = nil, date_specified = nil)
            message = {network_type: network_type, snapshot_range: snapshot_range, draw: draw, date_specified: date_specified}
            request(:new_get_bandwidth_image, Softlayer::Container::Bandwidth::GraphOutputs, message)
          end

          def self.reassign_servers(template_objects = nil, new_allotment_id = nil)
            message = {template_objects: template_objects, new_allotment_id: new_allotment_id}
            request(:reassign_servers, Boolean, message)
          end

          def request_vdr_cancellation
            request(:request_vdr_cancellation, Boolean)
          end

          def request_vdr_content_updates(hardware_to_add = nil, hardware_to_remove = nil, clouds_to_add = nil, clouds_to_remove = nil, optional_allotment_id = nil, adc_to_add = nil, adc_to_remove = nil)
            message = {hardware_to_add: hardware_to_add, hardware_to_remove: hardware_to_remove, clouds_to_add: clouds_to_add, clouds_to_remove: clouds_to_remove, optional_allotment_id: optional_allotment_id, adc_to_add: adc_to_add, adc_to_remove: adc_to_remove}
            request(:request_vdr_content_updates, Boolean, message)
          end

          def set_vdr_content(hardware = nil, bare_metal_servers = nil, virtual_server_instance = nil, adc = nil, optional_allotment_id = nil)
            message = {hardware: hardware, bare_metal_servers: bare_metal_servers, virtual_server_instance: virtual_server_instance, adc: adc, optional_allotment_id: optional_allotment_id}
            request(:set_vdr_content, Boolean, message)
          end

          def self.unassign_servers(template_objects = nil)
            message = {template_objects: template_objects}
            request(:unassign_servers, Boolean, message)
          end

          def void_pending_server_move(id = nil, type = nil)
            message = {id: id, type: type}
            request(:void_pending_server_move, Boolean, message)
          end

          def void_pending_vdr_cancellation
            request(:void_pending_vdr_cancellation, Boolean)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :account_id, type: Integer
            property :bandwidth_allotment_type_id, type: Integer
            property :create_date, type: DateTime
            property :end_date, type: DateTime
            property :id, type: Integer
            property :location_group_id, type: Integer
            property :name, type: String
            property :service_provider_id, type: Integer
            property :active_detail_count, type: BigDecimal
            property :application_delivery_controller_count, type: BigDecimal
            property :bare_metal_instance_count, type: BigDecimal
            property :billing_cycle_bandwidth_usage_count, type: BigDecimal
            property :detail_count, type: BigDecimal
            property :hardware_count, type: BigDecimal
            property :managed_bare_metal_instance_count, type: BigDecimal
            property :managed_hardware_count, type: BigDecimal
            property :managed_virtual_guest_count, type: BigDecimal
            property :private_network_only_hardware_count, type: BigDecimal
            property :virtual_guest_count, type: BigDecimal
            property :average_daily_public_bandwidth_usage, type: Float
            property :billing_cycle_public_usage_total, type: Integer
            property :inbound_public_bandwidth_usage, type: Float
            property :metric_tracking_object_id, type: Integer
            property :outbound_public_bandwidth_usage, type: Float
            property :over_bandwidth_allocation_flag, type: Integer
            property :projected_over_bandwidth_allocation_flag, type: Integer
            property :projected_public_bandwidth_usage, type: Float
            property :total_bandwidth_allocated, type: BigDecimal
          end
        end
      end
    end
  end
end
