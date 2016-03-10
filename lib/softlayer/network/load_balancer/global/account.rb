module Softlayer
  class Network
    module LoadBalancer
      module Global
        class Account < Softlayer::Model
          SERVICE = 'SoftLayer_Network_LoadBalancer_Global_Account'
          attr_accessor :allowed_number_of_hosts
          attr_accessor :average_connections_per_second
          attr_accessor :connections_per_second
          attr_accessor :fallback_ip
          attr_accessor :hostname
          attr_accessor :id
          attr_accessor :load_balance_type_id
          attr_accessor :notes
          attr_accessor :host_count
          attr_accessor :account
          attr_accessor :billing_item
          attr_accessor :hosts
          attr_accessor :load_balance_type
          attr_accessor :managed_resource_flag

          def add_ns_record
            request(:add_ns_record, Boolean)
          end

          def edit_object(template_object = nil)
            message = {template_object: template_object}
            request(:edit_object, Boolean, message)
          end

          def get_account
            request(:get_account, Softlayer::Account)
          end

          def get_billing_item
            request(:get_billing_item, Softlayer::Billing::Item)
          end

          def get_hosts
            request(:get_hosts, Array[Softlayer::Network::LoadBalancer::Global::Host])
          end

          def get_load_balance_type
            request(:get_load_balance_type, Softlayer::Network::LoadBalancer::Global::Type)
          end

          def get_managed_resource_flag
            request(:get_managed_resource_flag, Boolean)
          end

          def get_object
            request(:get_object, Softlayer::Network::LoadBalancer::Global::Account)
          end

          def remove_ns_record
            request(:remove_ns_record, Boolean)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :allowed_number_of_hosts, type: Integer
            property :average_connections_per_second, type: Float
            property :connections_per_second, type: Integer
            property :fallback_ip, type: String
            property :hostname, type: String
            property :id, type: Integer
            property :load_balance_type_id, type: Integer
            property :notes, type: String
            property :host_count, type: BigDecimal
            property :managed_resource_flag, type: Boolean
          end
        end
      end
    end
  end
end
