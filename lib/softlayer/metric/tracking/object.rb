module Softlayer
  module Metric
    module Tracking
      class Object < Softlayer::Model
        SERVICE = 'SoftLayer_Metric_Tracking_Object'
        autoload :Abstract, 'softlayer/metric/tracking/object/abstract'
        autoload :Data, 'softlayer/metric/tracking/object/data'
        autoload :HardwareServer, 'softlayer/metric/tracking/object/hardware_server'
        autoload :Type, 'softlayer/metric/tracking/object/type'
        autoload :VirtualDedicatedRack, 'softlayer/metric/tracking/object/virtual_dedicated_rack'
        autoload :Bandwidth, 'softlayer/metric/tracking/object/bandwidth'
        autoload :Virtual, 'softlayer/metric/tracking/object/virtual'
        attr_accessor :data
        attr_accessor :id
        attr_accessor :label
        attr_accessor :resource_table_id
        attr_accessor :start_date
        attr_accessor :type

        def get_backbone_bandwidth_graph(graph_title = nil)
          message = {graph_title: graph_title}
          request(:get_backbone_bandwidth_graph, Softlayer::Container::Bandwidth::GraphOutputs, message)
        end

        def get_bandwidth_data(start_date_time = nil, end_date_time = nil, type = nil, rollup_seconds = nil)
          message = {start_date_time: start_date_time, end_date_time: end_date_time, type: type, rollup_seconds: rollup_seconds}
          request(:get_bandwidth_data, Array[Softlayer::Metric::Tracking::Object::Data], message)
        end

        def get_bandwidth_graph(start_date_time = nil, end_date_time = nil, graph_type = nil, font_size = nil, graph_width = nil, graph_height = nil, do_not_show_time_zone = nil)
          message = {start_date_time: start_date_time, end_date_time: end_date_time, graph_type: graph_type, font_size: font_size, graph_width: graph_width, graph_height: graph_height, do_not_show_time_zone: do_not_show_time_zone}
          request(:get_bandwidth_graph, Softlayer::Container::Bandwidth::GraphOutputs, message)
        end

        def get_bandwidth_total(start_date_time = nil, end_date_time = nil, direction = nil, type = nil)
          message = {start_date_time: start_date_time, end_date_time: end_date_time, direction: direction, type: type}
          request(:get_bandwidth_total, BigDecimal, message)
        end

        def get_custom_graph_data(graph_container = nil)
          message = {graph_container: graph_container}
          request(:get_custom_graph_data, Softlayer::Container::Graph, message)
        end

        def get_details_for_date_range(start_date = nil, end_date = nil, graph_type = nil)
          message = {start_date: start_date, end_date: end_date, graph_type: graph_type}
          request(:get_details_for_date_range, Array[Softlayer::Container::Metric::Tracking::Object::Details], message)
        end

        def get_graph(start_date_time = nil, end_date_time = nil, graph_type = nil)
          message = {start_date_time: start_date_time, end_date_time: end_date_time, graph_type: graph_type}
          request(:get_graph, Softlayer::Container::Bandwidth::GraphOutputs, message)
        end

        def get_metric_data_types
          request(:get_metric_data_types, Array[Softlayer::Container::Metric::Data::Type])
        end

        def get_object
          request(:get_object, Softlayer::Metric::Tracking::Object)
        end

        def get_summary(graph_type = nil)
          message = {graph_type: graph_type}
          request(:get_summary, Softlayer::Container::Metric::Tracking::Object::Summary, message)
        end

        def get_summary_data(start_date_time = nil, end_date_time = nil, valid_types = nil, summary_period = nil)
          message = {start_date_time: start_date_time, end_date_time: end_date_time, valid_types: valid_types, summary_period: summary_period}
          request(:get_summary_data, Array[Softlayer::Metric::Tracking::Object::Data], message)
        end

        def get_type
          request(:get_type, Softlayer::Metric::Tracking::Object::Type)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :id, type: Integer
          property :label, type: String
          property :resource_table_id, type: Integer
          property :start_date, type: DateTime
        end
      end
    end
  end
end
