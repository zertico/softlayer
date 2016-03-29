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

      def create_a_record(host = nil, data = nil, ttl = nil)
        message = {host: host, data: data, ttl: ttl}
        request(:create_a_record, Softlayer::Dns::Domain::ResourceRecord::AType, message)
      end

      def create_aaaa_record(host = nil, data = nil, ttl = nil)
        message = {host: host, data: data, ttl: ttl}
        request(:create_aaaa_record, Softlayer::Dns::Domain::ResourceRecord::AaaaType, message)
      end

      def create_cname_record(host = nil, data = nil, ttl = nil)
        message = {host: host, data: data, ttl: ttl}
        request(:create_cname_record, Softlayer::Dns::Domain::ResourceRecord::CnameType, message)
      end

      def create_mx_record(host = nil, data = nil, ttl = nil, mx_priority = nil)
        message = {host: host, data: data, ttl: ttl, mx_priority: mx_priority}
        request(:create_mx_record, Softlayer::Dns::Domain::ResourceRecord::MxType, message)
      end

      def create_ns_record(host = nil, data = nil, ttl = nil)
        message = {host: host, data: data, ttl: ttl}
        request(:create_ns_record, Softlayer::Dns::Domain::ResourceRecord::NsType, message)
      end

      def self.create_object(template_object = nil)
        message = {template_object: template_object}
        request(:create_object, Softlayer::Dns::Domain, message)
      end

      def self.create_objects(template_objects = nil)
        message = {template_objects: template_objects}
        request(:create_objects, Array[Softlayer::Dns::Domain], message)
      end

      def self.create_ptr_record(ip_address = nil, ptr_record = nil, ttl = nil)
        message = {ip_address: ip_address, ptr_record: ptr_record, ttl: ttl}
        request(:create_ptr_record, Softlayer::Dns::Domain::ResourceRecord, message)
      end

      def create_spf_record(host = nil, data = nil, ttl = nil)
        message = {host: host, data: data, ttl: ttl}
        request(:create_spf_record, Softlayer::Dns::Domain::ResourceRecord::SpfType, message)
      end

      def create_txt_record(host = nil, data = nil, ttl = nil)
        message = {host: host, data: data, ttl: ttl}
        request(:create_txt_record, Softlayer::Dns::Domain::ResourceRecord::TxtType, message)
      end

      def delete_object
        request(:delete_object, Boolean)
      end

      def get_account
        request(:get_account, Softlayer::Account)
      end

      def self.get_by_domain_name(name = nil)
        message = {name: name}
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
