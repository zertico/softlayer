module Softlayer
  module Compliance
    module Report
      class Type < Softlayer::Entity
        SERVICE = 'SoftLayer_Compliance_Report_Type'
        attr_accessor :id
        attr_accessor :key_name
        attr_accessor :name

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::Compliance::Report::Type])
        end

        def get_object
          request(:get_object, Softlayer::Compliance::Report::Type)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :id, type: Integer
          property :key_name, type: String
          property :name, type: String
        end
      end
    end
  end
end
