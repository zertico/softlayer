module Softlayer
  module Security
    class Certificate < Softlayer::Entity
      SERVICE = 'SoftLayer_Security_Certificate'
      autoload :Entry, 'softlayer/security/certificate/entry'
      autoload :Request, 'softlayer/security/certificate/request'
      attr_accessor :certificate
      attr_accessor :certificate_signing_request
      attr_accessor :common_name
      attr_accessor :create_date
      attr_accessor :id
      attr_accessor :intermediate_certificate
      attr_accessor :key_size
      attr_accessor :modify_date
      attr_accessor :notes
      attr_accessor :organization_name
      attr_accessor :private_key
      attr_accessor :validity_begin
      attr_accessor :validity_days
      attr_accessor :validity_end
      attr_accessor :load_balancer_virtual_ip_address_count
      attr_accessor :associated_service_count
      attr_accessor :load_balancer_virtual_ip_addresses

      # template_object
      def self.create_object(message)
        request(:create_object, Softlayer::Security::Certificate, message)
      end

      def delete_object
        request(:delete_object, Boolean)
      end

      # template_object
      def edit_object(message)
        request(:edit_object, Boolean, message)
      end

      # common_name
      def self.find_by_common_name(message)
        request(:find_by_common_name, Array[Softlayer::Security::Certificate], message)
      end

      def get_associated_service_count
        request(:get_associated_service_count, Integer)
      end

      def get_load_balancer_virtual_ip_addresses
        request(:get_load_balancer_virtual_ip_addresses, Array[Softlayer::Network::Application::Delivery::Controller::LoadBalancer::VirtualIpAddress])
      end

      def get_object
        request(:get_object, Softlayer::Security::Certificate)
      end

      def get_pem_format
        request(:get_pem_format, String)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :certificate, type: String
        property :certificate_signing_request, type: String
        property :common_name, type: String
        property :create_date, type: DateTime
        property :id, type: Integer
        property :intermediate_certificate, type: String
        property :key_size, type: Integer
        property :modify_date, type: DateTime
        property :notes, type: String
        property :organization_name, type: String
        property :private_key, type: String
        property :validity_begin, type: DateTime
        property :validity_days, type: Integer
        property :validity_end, type: DateTime
        property :load_balancer_virtual_ip_address_count, type: BigDecimal
        property :associated_service_count, type: Integer
      end
    end
  end
end
