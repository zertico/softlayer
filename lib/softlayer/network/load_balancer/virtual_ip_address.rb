module Softlayer
  class Network
    module LoadBalancer
      class VirtualIpAddress < Softlayer::Model
        SERVICE = 'SoftLayer_Network_LoadBalancer_VirtualIpAddress'
        attr_accessor :connection_limit
        attr_accessor :id
        attr_accessor :load_balancing_method
        attr_accessor :load_balancing_method_full_name
        attr_accessor :modify_date
        attr_accessor :name
        attr_accessor :notes
        attr_accessor :security_certificate_id
        attr_accessor :source_port
        attr_accessor :type
        attr_accessor :virtual_ip_address
        attr_accessor :service_count
        attr_accessor :account
        attr_accessor :billing_item
        attr_accessor :customer_managed_flag
        attr_accessor :managed_resource_flag
        attr_accessor :services

        def disable
          request(:disable, Boolean)
        end

        def edit_object(template_object = nil)
          message = {template_object: template_object}
          request(:edit_object, Boolean, message)
        end

        def enable
          request(:enable, Boolean)
        end

        def get_account
          request(:get_account, Softlayer::Account)
        end

        def get_billing_item
          request(:get_billing_item, Softlayer::Billing::Item)
        end

        def get_customer_managed_flag
          request(:get_customer_managed_flag, Integer)
        end

        def get_managed_resource_flag
          request(:get_managed_resource_flag, Boolean)
        end

        def get_object
          request(:get_object, Softlayer::Network::LoadBalancer::VirtualIpAddress)
        end

        def get_services
          request(:get_services, Array[Softlayer::Network::LoadBalancer::Service])
        end

        def kick_all_connections
          request(:kick_all_connections, Boolean)
        end

        def upgrade_connection_limit
          request(:upgrade_connection_limit, Boolean)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :connection_limit, type: Integer
          property :id, type: Integer
          property :load_balancing_method, type: String
          property :load_balancing_method_full_name, type: String
          property :modify_date, type: DateTime
          property :name, type: String
          property :notes, type: String
          property :security_certificate_id, type: Integer
          property :source_port, type: Integer
          property :type, type: String
          property :virtual_ip_address, type: String
          property :service_count, type: BigDecimal
          property :customer_managed_flag, type: Integer
          property :managed_resource_flag, type: Boolean
        end
      end
    end
  end
end
