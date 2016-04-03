module Softlayer
  module Dns
    class Secondary < Softlayer::Entity
      SERVICE = 'SoftLayer_Dns_Secondary'
      attr_accessor :create_date
      attr_accessor :id
      attr_accessor :last_update
      attr_accessor :master_ip_address
      attr_accessor :status_id
      attr_accessor :status_text
      attr_accessor :transfer_frequency
      attr_accessor :zone_name
      attr_accessor :error_message_count
      attr_accessor :account
      attr_accessor :domain
      attr_accessor :error_messages
      attr_accessor :status

      def convert_to_primary
        request(:convert_to_primary, Boolean)
      end

      # template_object
      def self.create_object(message)
        request(:create_object, Softlayer::Dns::Secondary, message)
      end

      # template_objects
      def self.create_objects(message)
        request(:create_objects, Array[Softlayer::Dns::Secondary], message)
      end

      def delete_object
        request(:delete_object, Boolean)
      end

      # template_object
      def edit_object(message)
        request(:edit_object, Boolean, message)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      # name
      def self.get_by_domain_name(message)
        request(:get_by_domain_name, Array[Softlayer::Dns::Secondary], message)
      end

      def get_domain
        request(:get_domain, Softlayer::Dns::Domain)
      end

      def get_error_messages
        request(:get_error_messages, Array[Softlayer::Dns::Message])
      end

      def get_object
        request(:get_object, Softlayer::Dns::Secondary)
      end

      def get_status
        request(:get_status, Softlayer::Dns::Status)
      end

      def transfer_now
        request(:transfer_now, Boolean)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :create_date, type: DateTime
        property :id, type: Integer
        property :last_update, type: DateTime
        property :master_ip_address, type: String
        property :status_id, type: Integer
        property :status_text, type: String
        property :transfer_frequency, type: Integer
        property :zone_name, type: String
        property :error_message_count, type: BigDecimal
      end
    end
  end
end
