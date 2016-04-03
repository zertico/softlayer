require 'softlayer/generator/converter'

module Softlayer #:nodoc:
  class Model
    autoload :Filter, 'softlayer/model/filter'
    autoload :Limit, 'softlayer/model/limit'
    autoload :Mask, 'softlayer/model/mask'
    autoload :Operations, 'softlayer/model/operations'
    autoload :Response, 'softlayer/model/response'

    include Operations
    extend Operations

    class << self
      # user friendly methods
      def find(id)
        object = self.new.tap do |obj|
          obj.id = id.to_s
        end
        object.headers = request_headers
        object.get_object
      end

      def create(message)
        create_object(message)
      end

      def all
        request = all_request_for(self)
        return nil if request.nil?
        Softlayer::Account.headers = request_headers
        Softlayer::Account.send(request)
      end

      def request(method, return_object, message = {}, headers = {})
        headers.merge! request_headers
        message = process_message(message)

        return Softlayer::Mock.request(service_name, method, return_object, message, headers) if Softlayer.mock?
        parse(Softlayer::Client.new(service_name).call(method, message, headers), return_object, method)
      end

      def parse(hash, return_object, method)
        Response.new(hash).process(return_object)
      end

      def service_name
        name = Generator::Converter.to_softlayer_name(self.to_s)
        name = self::SERVICE if defined?(self::SERVICE)
        name
      end

      def all_request_for(klass)
        klass = klass.to_s
        requests = {
          'Softlayer::Account::AbuseEmail' => :get_abuse_emails,
          'Softlayer::Account::Address' => :get_addresses,
          'Softlayer::Account::Agreement' => :get_billing_agreements,
          'Softlayer::Account::Attribute' => :get_attributes,
          'Softlayer::Account::Contact' => :get_account_contacts,
          'Softlayer::Account::Link' => :get_account_links,
          'Softlayer::Account::Note' => :get_internal_notes,
          'Softlayer::Account::Regional::Registry::Detail' => :get_subnet_registration_details,
          'Softlayer::Account::Shipment' => :get_shipments,
          'Softlayer::Account::Status' => :get_account_status,
          'Softlayer::Billing::Invoice' => :get_invoices,
          'Softlayer::Billing::Item' => :get_all_billing_items,
          'Softlayer::Billing::Order' => :get_orders,
          'Softlayer::Billing::Order::Quote' => :get_quotes,
          'Softlayer::Billing::Payment::Processor' => :get_payment_processors,
          'Softlayer::Catalyst::Enrollment' => :get_catalyst_enrollments,
          'Softlayer::Container::Utility::Message' => :get_auxiliary_notifications,
          'Softlayer::Container::Utility::Microsoft::Windows::UpdateServices::Status' => :get_windows_update_status,
          'Softlayer::Dns::Domain' => :get_domains,
          'Softlayer::Dns::Domain::Registration' => :get_domain_registrations,
          'Softlayer::Dns::Secondary' => :get_secondary_domains,
          'Softlayer::FlexibleCredit::Enrollment' => :get_flexible_credit_enrollments,
          'Softlayer::Hardware' => :get_hardware,
          'Softlayer::Hardware::Component::Model::Generic' => :get_owned_hardware_generic_component_models,
          'Softlayer::Hardware::Component::RemoteManagement::Command::Request' => :get_remote_management_command_requests,
          'Softlayer::Network::Application::Delivery::Controller' => :get_application_delivery_controllers,
          'Softlayer::Network::Application::Delivery::Controller::LoadBalancer::VirtualIpAddress' => :get_adc_load_balancers,
          'Softlayer::Network::Bandwidth::Version1::Allotment' => :get_bandwidth_allotments,
          'Softlayer::Network::ContentDelivery::Account' => :get_cdn_accounts,
          'Softlayer::Network::Gateway' => :get_network_gateways,
          'Softlayer::Network::LoadBalancer::Global::Account' => :get_global_load_balancer_accounts,
          'Softlayer::Network::LoadBalancer::VirtualIpAddress' => :get_load_balancers,
          'Softlayer::Network::Media::Transcode::Account' => :get_transcode_accounts,
          'Softlayer::Network::Message::Delivery' => :get_network_message_delivery_accounts,
          'Softlayer::Network::Message::Queue' => :get_message_queue_accounts,
          'Softlayer::Network::Security::Scanner::Request' => :get_security_scan_requests,
          'Softlayer::Network::Storage::Group' => :get_network_storage_groups,
          'Softlayer::Network::Subnet' => :get_subnets,
          'Softlayer::Network::Subnet::IpAddress' => :get_ip_addresses,
          'Softlayer::Network::Subnet::IpAddress::Global' => :get_global_ip_records,
          'Softlayer::Network::Subnet::Registration' => :get_subnet_registrations,
          'Softlayer::Network::Tunnel::Module::Context' => :get_network_tunnel_contexts,
          'Softlayer::Network::Vlan' => :get_network_vlans,
          'Softlayer::Notification::Subscriber' => :get_notification_subscribers,
          'Softlayer::Product::Item::Price::Account::Restriction' => :get_price_restrictions,
          'Softlayer::Product::Upgrade::Request' => :get_upgrade_requests,
          'Softlayer::Provisioning::Hook' => :get_post_provisioning_hooks,
          'Softlayer::Resource::Group' => :get_resource_groups,
          'Softlayer::Scale::Group' => :get_scale_groups,
          'Softlayer::Security::Certificate' => :get_security_certificates,
          'Softlayer::Security::Certificate::Entry' => :get_valid_security_certificate_entries,
          'Softlayer::Security::Ssh::Key' => :get_ssh_keys,
          'Softlayer::Tag' => :get_tags,
          'Softlayer::Ticket' => :get_tickets,
          'Softlayer::User::Access::Facility::Log' => :get_facility_logs,
          'Softlayer::User::Customer' => :get_users,
          'Softlayer::User::Permission::Group' => :get_permission_groups,
          'Softlayer::User::Permission::Role' => :get_permission_roles,
          'Softlayer::Virtual::Disk::Image' => :get_virtual_disk_images,
          'Softlayer::Virtual::Guest' => :get_virtual_guests,
          'Softlayer::Virtual::Guest::Block::Device::Template::Group' => :get_block_device_template_groups
        }
        return nil unless requests.has_key?(klass)
        requests[klass]
      end

      def process_message(message)
        message.each_pair do |k, v|
          message[k] = v.to_softlayer if v.respond_to?(:to_softlayer)
        end
        message
      end
    end

    def request(method, return_object, message = {})
      headers = request_headers.merge(init_headers)

      self.class.request(method, return_object, message, headers)
    end

    def to_hash
      (self.class.to_s+"::Representer").constantize.new(self).to_hash
    end

    def service_name
      self.class.service_name
    end

    def to_softlayer
      hash = "#{self.class}::Representer".constantize.new(self).to_hash
      self.instance_variables.each do |var|
        value = self.instance_variable_get(var)
        unless value.nil?
          if value.respond_to?(:to_softlayer)
            hash[var.to_s.tr('@', '').camelize(:lower)] = value.to_softlayer
          else
            hash[var.to_s.tr('@', '').camelize(:lower)] = value
          end
        end
      end
      hash.camelize_keys!
    end

    def init_headers
      raise Exception.new('You need to set the ID on object') if id.nil?
      {
        "#{self.class.service_name}InitParameters" => {
          "id" => self.id.to_i
        }
      }
    end
  end
end
