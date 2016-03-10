module Softlayer
  class Network
    module Message
      class Queue < Softlayer::Model
        SERVICE = 'SoftLayer_Network_Message_Queue'
        autoload :Node, 'softlayer/network/message/queue/node'
        autoload :Status, 'softlayer/network/message/queue/status'
        attr_accessor :account_id
        attr_accessor :create_date
        attr_accessor :id
        attr_accessor :message_queue_status_id
        attr_accessor :name
        attr_accessor :notes
        attr_accessor :node_count
        attr_accessor :account
        attr_accessor :billing_item
        attr_accessor :nodes
        attr_accessor :status

        def get_account
          request(:get_account, Softlayer::Account)
        end

        def get_billing_item
          request(:get_billing_item, Softlayer::Billing::Item)
        end

        def get_nodes
          request(:get_nodes, Array[Softlayer::Network::Message::Queue::Node])
        end

        def get_object
          request(:get_object, Softlayer::Network::Message::Queue)
        end

        def get_status
          request(:get_status, Softlayer::Network::Message::Queue::Status)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :account_id, type: Integer
          property :create_date, type: DateTime
          property :id, type: Integer
          property :message_queue_status_id, type: Integer
          property :name, type: String
          property :notes, type: String
          property :node_count, type: BigDecimal
        end
      end
    end
  end
end
