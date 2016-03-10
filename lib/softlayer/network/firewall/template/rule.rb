module Softlayer
  class Network
    module Firewall
      class Template
        class Rule < Softlayer::Model
          attr_accessor :action
          attr_accessor :destination_ip_address
          attr_accessor :destination_ip_subnet_mask
          attr_accessor :destination_port_range_end
          attr_accessor :destination_port_range_start
          attr_accessor :firewall_template_id
          attr_accessor :id
          attr_accessor :notes
          attr_accessor :order_value
          attr_accessor :protocol
          attr_accessor :source_ip_address
          attr_accessor :source_ip_subnet_mask
          attr_accessor :firewall_template

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :action, type: String
            property :destination_ip_address, type: String
            property :destination_ip_subnet_mask, type: String
            property :destination_port_range_end, type: Integer
            property :destination_port_range_start, type: Integer
            property :firewall_template_id, type: Integer
            property :id, type: Integer
            property :notes, type: String
            property :order_value, type: Integer
            property :protocol, type: String
            property :source_ip_address, type: String
            property :source_ip_subnet_mask, type: String
          end
        end
      end
    end
  end
end
