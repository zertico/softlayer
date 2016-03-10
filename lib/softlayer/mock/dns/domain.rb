module Softlayer
  class Mock
    class Dns
      class Domain <  Softlayer::Mock
        def self.create_object(attrs=nil)
          domain = add_attributes(attrs)
          resource_record = ResourceRecord::SoaType
          domain.resource_records = []
          resource_record_attrs = {
            :data => "ns1.softlayer.com.",
            :domain_id => 1846064,
            :expire => 604800,
            :host => "@",
            :id => all.length + 1,
            :minimum => 3600,
            :refresh => 3600,
            :responsible_person => "root.#{domain.name}.",
            :retry => 300,
            :ttl => 86400,
            :type => "SOA",
            :domain => "*1"
          }
          domain.resource_records.push(resource_record.create_object(resource_record_attrs))
          domain.resource_records.push(resource_record.find('ns1'))
          domain.resource_records.push(resource_record.find('ns2'))
          key = domain.name.split(".")[0]
          save_on_database(key,domain)
        end
      end
    end
  end
end
