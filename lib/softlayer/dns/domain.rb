module Softlayer
  module Dns
    class Domain < Softlayer::Entity
      SERVICE = 'SoftLayer_Dns_Domain'
      autoload :Forward, 'softlayer/dns/domain/forward'
      autoload :Registration, 'softlayer/dns/domain/registration'
      autoload :ResourceRecord, 'softlayer/dns/domain/resource_record'
      autoload :Reverse, 'softlayer/dns/domain/reverse'
      attr_accessor :id
      attr_accessor :name
      attr_accessor :serial
      attr_accessor :update_date
      attr_accessor :resource_record_count
      attr_accessor :account
      attr_accessor :managed_resource_flag
      attr_accessor :resource_records
      attr_accessor :secondary

      # host
      # data
      # ttl
      def create_a_record(message)
        request(:create_a_record, Softlayer::Dns::Domain::ResourceRecord::AType, message)
      end

      # host
      # data
      # ttl
      def create_aaaa_record(message)
        request(:create_aaaa_record, Softlayer::Dns::Domain::ResourceRecord::AaaaType, message)
      end

      # host
      # data
      # ttl
      def create_cname_record(message)
        request(:create_cname_record, Softlayer::Dns::Domain::ResourceRecord::CnameType, message)
      end

      # host
      # data
      # ttl
      # mx_priority
      def create_mx_record(message)
        request(:create_mx_record, Softlayer::Dns::Domain::ResourceRecord::MxType, message)
      end

      # host
      # data
      # ttl
      def create_ns_record(message)
        request(:create_ns_record, Softlayer::Dns::Domain::ResourceRecord::NsType, message)
      end

      # template_object
      def self.create_object(message)
        request(:create_object, Softlayer::Dns::Domain, message)
      end

      # template_objects
      def self.create_objects(message)
        request(:create_objects, Array[Softlayer::Dns::Domain], message)
      end

      # ip_address
      # ptr_record
      # ttl
      def self.create_ptr_record(message)
        request(:create_ptr_record, Softlayer::Dns::Domain::ResourceRecord, message)
      end

      # host
      # data
      # ttl
      def create_spf_record(message)
        request(:create_spf_record, Softlayer::Dns::Domain::ResourceRecord::SpfType, message)
      end

      # host
      # data
      # ttl
      def create_txt_record(message)
        request(:create_txt_record, Softlayer::Dns::Domain::ResourceRecord::TxtType, message)
      end

      def delete_object
        request(:delete_object, Boolean)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      # name
      def self.get_by_domain_name(message)
        request(:get_by_domain_name, Array[Softlayer::Dns::Domain], message)
      end

      def get_managed_resource_flag
        request(:get_managed_resource_flag, Boolean)
      end

      def get_object
        request(:get_object, Softlayer::Dns::Domain)
      end

      def get_resource_records
        request(:get_resource_records, Array[Softlayer::Dns::Domain::ResourceRecord])
      end

      def get_secondary
        request(:get_secondary, Softlayer::Dns::Secondary)
      end

      def get_zone_file_contents
        request(:get_zone_file_contents, String)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :id, type: Integer
        property :name, type: String
        property :serial, type: Integer
        property :update_date, type: DateTime
        property :resource_record_count, type: BigDecimal
        property :managed_resource_flag, type: Boolean
      end
    end
  end
end
