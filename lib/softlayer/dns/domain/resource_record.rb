module Softlayer
  module Dns
    class Domain
      class ResourceRecord < Softlayer::Model
        SERVICE = 'SoftLayer_Dns_Domain_ResourceRecord'
        autoload :AaaaType, 'softlayer/dns/domain/resource_record/aaaa_type'
        autoload :AType, 'softlayer/dns/domain/resource_record/a_type'
        autoload :CnameType, 'softlayer/dns/domain/resource_record/cname_type'
        autoload :MxType, 'softlayer/dns/domain/resource_record/mx_type'
        autoload :NsType, 'softlayer/dns/domain/resource_record/ns_type'
        autoload :PtrType, 'softlayer/dns/domain/resource_record/ptr_type'
        autoload :SoaType, 'softlayer/dns/domain/resource_record/soa_type'
        autoload :SpfType, 'softlayer/dns/domain/resource_record/spf_type'
        autoload :SrvType, 'softlayer/dns/domain/resource_record/srv_type'
        autoload :TxtType, 'softlayer/dns/domain/resource_record/txt_type'
        attr_accessor :data
        attr_accessor :domain_id
        attr_accessor :expire
        attr_accessor :host
        attr_accessor :id
        attr_accessor :minimum
        attr_accessor :mx_priority
        attr_accessor :refresh
        attr_accessor :responsible_person
        attr_accessor :retry
        attr_accessor :ttl
        attr_accessor :type
        attr_accessor :domain

        def self.create_object(template_object = nil)
          message = {template_object: template_object}
          request(:create_object, Softlayer::Dns::Domain::ResourceRecord, message)
        end

        def self.create_objects(template_objects = nil)
          message = {template_objects: template_objects}
          request(:create_objects, Array[Softlayer::Dns::Domain::ResourceRecord], message)
        end

        def delete_object
          request(:delete_object, Boolean)
        end

        def self.delete_objects(template_objects = nil)
          message = {template_objects: template_objects}
          request(:delete_objects, Boolean, message)
        end

        def edit_object(template_object = nil)
          message = {template_object: template_object}
          request(:edit_object, Boolean, message)
        end

        def self.edit_objects(template_objects = nil)
          message = {template_objects: template_objects}
          request(:edit_objects, Boolean, message)
        end

        def get_domain
          request(:get_domain, Softlayer::Dns::Domain)
        end

        def get_object
          request(:get_object, Softlayer::Dns::Domain::ResourceRecord)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :data, type: String
          property :domain_id, type: Integer
          property :expire, type: Integer
          property :host, type: String
          property :id, type: Integer
          property :minimum, type: Integer
          property :mx_priority, type: Integer
          property :refresh, type: Integer
          property :responsible_person, type: String
          property :retry, type: Integer
          property :ttl, type: Integer
          property :type, type: String
        end
      end
    end
  end
end
