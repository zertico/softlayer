module Softlayer
  module Metric
    module Tracking
      class Object < Softlayer::Entity
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

        # graph_title
        def get_backbone_bandwidth_graph(message)
          request(:get_backbone_bandwidth_graph, Softlayer::Container::Bandwidth::GraphOutputs, message)
        end

        # start_date_time
        # end_date_time
        # type
        # rollup_seconds
        def get_bandwidth_data(message)
          request(:get_bandwidth_data, Array[Softlayer::Metric::Tracking::Object::Data], message)
        end

        # start_date_time
        # end_date_time
        # graph_type
        # font_size
        # graph_width
        # graph_height
        # do_not_show_time_zone
        def get_bandwidth_graph(message)
          request(:get_bandwidth_graph, Softlayer::Container::Bandwidth::GraphOutputs, message)
        end

        # start_date_time
        # end_date_time
        # direction
        # type
        def get_bandwidth_total(message)
          request(:get_bandwidth_total, BigDecimal, message)
        end

        # graph_container
        def get_custom_graph_data(message)
          request(:get_custom_graph_data, Softlayer::Container::Graph, message)
        end

        # start_date
        # end_date
        # graph_type
        def get_details_for_date_range(message)
          request(:get_details_for_date_range, Array[Softlayer::Container::Metric::Tracking::Object::Details], message)
        end

        # start_date_time
        # end_date_time
        # graph_type
        def get_graph(message)
          request(:get_graph, Softlayer::Container::Bandwidth::GraphOutputs, message)
        end

        def get_metric_data_types
          request(:get_metric_data_types, Array[Softlayer::Container::Metric::Data::Type])
        end

        def get_object
          request(:get_object, Softlayer::Metric::Tracking::Object)
        end

        # graph_type
        def get_summary(message)
          request(:get_summary, Softlayer::Container::Metric::Tracking::Object::Summary, message)
        end

        # start_date_time
        # end_date_time
        # valid_types
        # summary_period
        def get_summary_data(message)
          request(:get_summary_data, Array[Softlayer::Metric::Tracking::Object::Data], message)
        end

        def get_type
          request(:get_type, Softlayer::Metric::Tracking::Object::Type)
        end

        class Representer < Softlayer::Entity::Representer
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
