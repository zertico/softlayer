module Softlayer
  class Network
    module Application
      module Delivery
        class Controller
          module LoadBalancer
            class VirtualIpAddress < Softlayer::Entity
              SERVICE = 'SoftLayer_Network_Application_Delivery_Controller_LoadBalancer_VirtualIpAddress'
              autoload :SecureTransportCipher, 'softlayer/network/application/delivery/controller/load_balancer/virtual_ip_address/secure_transport_cipher'
              autoload :SecureTransportProtocol, 'softlayer/network/application/delivery/controller/load_balancer/virtual_ip_address/secure_transport_protocol'
              attr_accessor :account_id
              attr_accessor :connection_limit
              attr_accessor :connection_limit_units
              attr_accessor :dedicated_flag
              attr_accessor :id
              attr_accessor :ip_address_id
              attr_accessor :notes
              attr_accessor :security_certificate_id
              attr_accessor :ssl_active_flag
              attr_accessor :ssl_enabled_flag
              attr_accessor :application_delivery_controller_count
              attr_accessor :load_balancer_hardware_count
              attr_accessor :secure_transport_cipher_count
              attr_accessor :secure_transport_protocol_count
              attr_accessor :virtual_server_count
              attr_accessor :account
              attr_accessor :application_delivery_controller
              attr_accessor :application_delivery_controllers
              attr_accessor :billing_item
              attr_accessor :dedicated_billing_item
              attr_accessor :high_availability_flag
              attr_accessor :ip_address
              attr_accessor :load_balancer_hardware
              attr_accessor :managed_resource_flag
              attr_accessor :secure_transport_ciphers
              attr_accessor :secure_transport_protocols
              attr_accessor :security_certificate
              attr_accessor :security_certificate_entry
              attr_accessor :virtual_servers

              # template_object
              def edit_object(message)
                request(:edit_object, Boolean, message)
              end

              def get_account
                request(:get_account, Softlayer::Account)
              end

              def get_application_delivery_controller
                request(:get_application_delivery_controller, Softlayer::Network::Application::Delivery::Controller)
              end

              def get_application_delivery_controllers
                request(:get_application_delivery_controllers, Array[Softlayer::Network::Application::Delivery::Controller])
              end

              def get_available_secure_transport_ciphers
                request(:get_available_secure_transport_ciphers, Array[Softlayer::Security::SecureTransportCipher])
              end

              def get_available_secure_transport_protocols
                request(:get_available_secure_transport_protocols, Array[Softlayer::Security::SecureTransportProtocol])
              end

              def get_billing_item
                request(:get_billing_item, Softlayer::Billing::Item)
              end

              def get_dedicated_billing_item
                request(:get_dedicated_billing_item, Softlayer::Billing::Item::Network::LoadBalancer)
              end

              def get_high_availability_flag
                request(:get_high_availability_flag, Boolean)
              end

              def get_ip_address
                request(:get_ip_address, Softlayer::Network::Subnet::IpAddress)
              end

              def get_load_balancer_hardware
                request(:get_load_balancer_hardware, Array[Softlayer::Hardware])
              end

              def get_managed_resource_flag
                request(:get_managed_resource_flag, Boolean)
              end

              def get_object
                request(:get_object, Softlayer::Network::Application::Delivery::Controller::LoadBalancer::VirtualIpAddress)
              end

              def get_secure_transport_ciphers
                request(:get_secure_transport_ciphers, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::VirtualIpAddress::SecureTransportCipher])
              end

              def get_secure_transport_protocols
                request(:get_secure_transport_protocols, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::VirtualIpAddress::SecureTransportProtocol])
              end

              def get_security_certificate
                request(:get_security_certificate, Softlayer::Security::Certificate)
              end

              def get_security_certificate_entry
                request(:get_security_certificate_entry, Softlayer::Security::Certificate::Entry)
              end

              def get_virtual_servers
                request(:get_virtual_servers, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::VirtualServer])
              end

              def start_ssl
                request(:start_ssl, Boolean)
              end

              def stop_ssl
                request(:stop_ssl, Boolean)
              end

              def upgrade_connection_limit
                request(:upgrade_connection_limit, Boolean)
              end

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :account_id, type: Integer
                property :connection_limit, type: Integer
                property :connection_limit_units, type: String
                property :dedicated_flag, type: Boolean
                property :id, type: Integer
                property :ip_address_id, type: Integer
                property :notes, type: String
                property :security_certificate_id, type: Integer
                property :ssl_active_flag, type: Boolean
                property :ssl_enabled_flag, type: Boolean
                property :application_delivery_controller_count, type: BigDecimal
                property :load_balancer_hardware_count, type: BigDecimal
                property :secure_transport_cipher_count, type: BigDecimal
                property :secure_transport_protocol_count, type: BigDecimal
                property :virtual_server_count, type: BigDecimal
                property :high_availability_flag, type: Boolean
                property :managed_resource_flag, type: Boolean
              end
            end
          end
        end
      end
    end
  end
end
