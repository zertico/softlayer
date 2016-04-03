module Softlayer
  class Network
    module Message
      class Queue
        class Node < Softlayer::Entity
          SERVICE = 'SoftLayer_Network_Message_Queue_Node'
          attr_accessor :account_name
          attr_accessor :id
          attr_accessor :message_queue_id
          attr_accessor :name
          attr_accessor :notes
          attr_accessor :message_queue
          attr_accessor :metric_tracking_object
          attr_accessor :service_resource

          # username
          def add_user(message)
            request(:add_user, Boolean, message)
          end

          # username
          def delete_user(message)
            request(:delete_user, Boolean, message)
          end

          def get_all_users
            request(:get_all_users, Array[String])
          end

          def get_message_queue
            request(:get_message_queue, Softlayer::Network::Message::Queue)
          end

          def get_metric_tracking_object
            request(:get_metric_tracking_object, Softlayer::Metric::Tracking::Object)
          end

          def get_object
            request(:get_object, Softlayer::Network::Message::Queue::Node)
          end

          def get_service_resource
            request(:get_service_resource, Softlayer::Network::Service::Resource)
          end

          # start_date
          # end_date
          def get_usage(message)
            request(:get_usage, Array[Softlayer::Metric::Tracking::Object::Data], message)
          end

          # graph_data
          def get_usage_graph(message)
            request(:get_usage_graph, Softlayer::Container::Graph, message)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :account_name, type: String
            property :id, type: Integer
            property :message_queue_id, type: Integer
            property :name, type: String
            property :notes, type: String
          end
        end
      end
    end
  end
end
