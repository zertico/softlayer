module Softlayer
  class Generator
    class Converter
      def self.type(softlayer_type)
        softlayer_type = softlayer_type.dup
        softlayer_type.gsub!(/\Axsd:/, '') if softlayer_type.match(/\Axsd:/)
        softlayer_type.gsub!(/\Atns:/, '') if softlayer_type.match(/\Atns:/)
        softlayer_type.gsub!(/\Ans1:/, '') if softlayer_type.match(/\Ans1:/)
        case softlayer_type
        when /Array\z/
          process_array(softlayer_type)
        when /\Atns:SoftLayer_([a-zA-Z]+)/
          class_name(softlayer_type)
        when /\ASoftLayer_([a-zA-Z]+)/
          class_name(softlayer_type)
        when /\AMcAfee_([a-zA-Z]+)/
          class_name(softlayer_type)
        when "boolean"
          "Boolean"
        when "unsignedLong"
          "BigDecimal"
        when "int"
          "Integer"
        when "string"
          "String"
        when "dateTime"
          "DateTime"
        when "float"
          "Float"
        when "decimal"
          "Float"
        when "unsignedInt"
          "Integer"          
        when "base64Binary"
          "Softlayer::Base64Binary"
        when "ArrayOfstring"
          "Array[String]"
        when "ArrayOfint"
          "Array[Integer]"
        when "json"
          "Softlayer::Json"
        # dummy objects
        when "authenticate"
          "authenticate"
        when "resultLimit"
          "resultLimit"
        when "totalItems"
          "totalItems"
        when "nonNegativeInteger"
          "Integer"
        when "PortalLoginToken"
          "Softlayer::PortalLoginToken"
        else
          raise Exception.new("#{softlayer_type} is a unknown converter type")
        end
      end

      def self.module_name(softlayer_type)
        softlayer_type = softlayer_type.dup
        case softlayer_type
        when /\ASoftLayer_([a-zA-Z]+)/
          class_name(softlayer_type)
        when /\AMcAfee_([a-zA-Z]+)/
          class_name(softlayer_type)
        when "PortalLoginToken"
          "Softlayer::PortalLoginToken"
        else
          raise Exception.new("#{softlayer_type} is a unknown converter type")
        end
      end
      
      def self.process_array(name)
        name.gsub!(/Array\z/, '')
        class_name = self.class_name(name)
        "Array[#{class_name}]"
      end
      
      def self.class_name(name)
        name.sub!(/\A(tns:)?SoftLayer_/, '')
        name.gsub!("_", "::")
        name.sub!("Network::Storage::Iscsi::OS", "Network::Storage::Iscsi::Os") if name.match(/Network::Storage::Iscsi::OS/)
        "Softlayer::" + name
      end
      
      def self.to_softlayer_name(name)
        name.to_s.sub(/\ASoftlayer::/, "SoftLayer_").gsub("::", "_")
      end
      
      def self.message_name(message)
        return "new_getBandwidthImage" if message.to_s == "new_get_bandwidth_image"
        return "getSnapshotCapacityGb" if message.to_s == "get_snapshot_capacity_gb"
        return "getArchiveDiskUsageRatePerGb" if message.to_s == "get_archive_disk_usage_rate_per_gb"
        return "getPublicImageDiskUsageRatePerGb" if message.to_s == "get_public_image_disk_usage_rate_per_gb"
        message = message.to_s.camelcase(:lower)
        message.gsub!(/Gb\z/, 'GB')
        message
      end
    end
  end
end