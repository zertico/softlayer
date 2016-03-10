module Softlayer
  class Network
    module Tunnel
      module Module
        class Context < Softlayer::Model
          SERVICE = 'SoftLayer_Network_Tunnel_Module_Context'
          autoload :Address, 'softlayer/network/tunnel/module/context/address'
          attr_accessor :account_id
          attr_accessor :advanced_configuration_flag
          attr_accessor :create_date
          attr_accessor :customer_peer_ip_address
          attr_accessor :friendly_name
          attr_accessor :id
          attr_accessor :internal_peer_ip_address
          attr_accessor :modify_date
          attr_accessor :name
          attr_accessor :phase_one_authentication
          attr_accessor :phase_one_diffie_hellman_group
          attr_accessor :phase_one_encryption
          attr_accessor :phase_one_keylife
          attr_accessor :phase_two_authentication
          attr_accessor :phase_two_diffie_hellman_group
          attr_accessor :phase_two_encryption
          attr_accessor :phase_two_keylife
          attr_accessor :phase_two_perfect_forward_secrecy
          attr_accessor :preshared_key
          attr_accessor :address_translation_count
          attr_accessor :all_available_service_subnet_count
          attr_accessor :customer_subnet_count
          attr_accessor :internal_subnet_count
          attr_accessor :service_subnet_count
          attr_accessor :static_route_subnet_count
          attr_accessor :transaction_history_count
          attr_accessor :account
          attr_accessor :active_transaction
          attr_accessor :address_translations
          attr_accessor :all_available_service_subnets
          attr_accessor :billing_item
          attr_accessor :customer_subnets
          attr_accessor :datacenter
          attr_accessor :internal_subnets
          attr_accessor :service_subnets
          attr_accessor :static_route_subnets
          attr_accessor :transaction_history

          def add_customer_subnet_to_network_tunnel(subnet_id = nil)
            message = {subnet_id: subnet_id}
            request(:add_customer_subnet_to_network_tunnel, Boolean, message)
          end

          def add_private_subnet_to_network_tunnel(subnet_id = nil)
            message = {subnet_id: subnet_id}
            request(:add_private_subnet_to_network_tunnel, Boolean, message)
          end

          def add_service_subnet_to_network_tunnel(subnet_id = nil)
            message = {subnet_id: subnet_id}
            request(:add_service_subnet_to_network_tunnel, Boolean, message)
          end

          def apply_configurations_to_device
            request(:apply_configurations_to_device, Boolean)
          end

          def create_address_translation(translation = nil)
            message = {translation: translation}
            request(:create_address_translation, Softlayer::Network::Tunnel::Module::Context::Address::Translation, message)
          end

          def create_address_translations(translations = nil)
            message = {translations: translations}
            request(:create_address_translations, Array[Softlayer::Network::Tunnel::Module::Context::Address::Translation], message)
          end

          def delete_address_translation(translation_id = nil)
            message = {translation_id: translation_id}
            request(:delete_address_translation, Boolean, message)
          end

          def download_address_translation_configurations
            request(:download_address_translation_configurations, Softlayer::Container::Utility::File::Entity)
          end

          def download_parameter_configurations
            request(:download_parameter_configurations, Softlayer::Container::Utility::File::Entity)
          end

          def edit_address_translation(translation = nil)
            message = {translation: translation}
            request(:edit_address_translation, Softlayer::Network::Tunnel::Module::Context::Address::Translation, message)
          end

          def edit_address_translations(translations = nil)
            message = {translations: translations}
            request(:edit_address_translations, Array[Softlayer::Network::Tunnel::Module::Context::Address::Translation], message)
          end

          def edit_object(template_object = nil)
            message = {template_object: template_object}
            request(:edit_object, Boolean, message)
          end

          def get_account
            request(:get_account, Softlayer::Account)
          end

          def get_active_transaction
            request(:get_active_transaction, Softlayer::Provisioning::Version1::Transaction)
          end

          def get_address_translation_configurations
            request(:get_address_translation_configurations, String)
          end

          def get_address_translations
            request(:get_address_translations, Array[Softlayer::Network::Tunnel::Module::Context::Address::Translation])
          end

          def get_all_available_service_subnets
            request(:get_all_available_service_subnets, Array[Softlayer::Network::Subnet])
          end

          def self.get_authentication_default
            request(:get_authentication_default, String)
          end

          def self.get_authentication_options
            request(:get_authentication_options, Array[String])
          end

          def get_billing_item
            request(:get_billing_item, Softlayer::Billing::Item)
          end

          def get_customer_subnets
            request(:get_customer_subnets, Array[Softlayer::Network::Customer::Subnet])
          end

          def get_datacenter
            request(:get_datacenter, Softlayer::Location)
          end

          def self.get_diffie_hellman_group_default
            request(:get_diffie_hellman_group_default, Integer)
          end

          def self.get_diffie_hellman_group_options
            request(:get_diffie_hellman_group_options, Array[Integer])
          end

          def self.get_encryption_default
            request(:get_encryption_default, String)
          end

          def self.get_encryption_options
            request(:get_encryption_options, Array[String])
          end

          def get_internal_subnets
            request(:get_internal_subnets, Array[Softlayer::Network::Subnet])
          end

          def self.get_keylife_limits
            request(:get_keylife_limits, Array[Integer])
          end

          def get_object
            request(:get_object, Softlayer::Network::Tunnel::Module::Context)
          end

          def get_parameter_configurations_for_customer_view
            request(:get_parameter_configurations_for_customer_view, String)
          end

          def self.get_phase_one_keylife_default
            request(:get_phase_one_keylife_default, String)
          end

          def self.get_phase_two_keylife_default
            request(:get_phase_two_keylife_default, String)
          end

          def get_service_subnets
            request(:get_service_subnets, Array[Softlayer::Network::Subnet])
          end

          def get_static_route_subnets
            request(:get_static_route_subnets, Array[Softlayer::Network::Subnet])
          end

          def get_transaction_history
            request(:get_transaction_history, Array[Softlayer::Provisioning::Version1::Transaction])
          end

          def remove_customer_subnet_from_network_tunnel(subnet_id = nil)
            message = {subnet_id: subnet_id}
            request(:remove_customer_subnet_from_network_tunnel, Boolean, message)
          end

          def remove_private_subnet_from_network_tunnel(subnet_id = nil)
            message = {subnet_id: subnet_id}
            request(:remove_private_subnet_from_network_tunnel, Boolean, message)
          end

          def remove_service_subnet_from_network_tunnel(subnet_id = nil)
            message = {subnet_id: subnet_id}
            request(:remove_service_subnet_from_network_tunnel, Boolean, message)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :account_id, type: Integer
            property :advanced_configuration_flag, type: Integer
            property :create_date, type: DateTime
            property :customer_peer_ip_address, type: String
            property :friendly_name, type: String
            property :id, type: Integer
            property :internal_peer_ip_address, type: String
            property :modify_date, type: DateTime
            property :name, type: String
            property :phase_one_authentication, type: String
            property :phase_one_diffie_hellman_group, type: Integer
            property :phase_one_encryption, type: String
            property :phase_one_keylife, type: Integer
            property :phase_two_authentication, type: String
            property :phase_two_diffie_hellman_group, type: Integer
            property :phase_two_encryption, type: String
            property :phase_two_keylife, type: Integer
            property :phase_two_perfect_forward_secrecy, type: Integer
            property :preshared_key, type: String
            property :address_translation_count, type: BigDecimal
            property :all_available_service_subnet_count, type: BigDecimal
            property :customer_subnet_count, type: BigDecimal
            property :internal_subnet_count, type: BigDecimal
            property :service_subnet_count, type: BigDecimal
            property :static_route_subnet_count, type: BigDecimal
            property :transaction_history_count, type: BigDecimal
          end
        end
      end
    end
  end
end
