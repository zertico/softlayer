module Softlayer
  module Product
    class Package
      class Type < Softlayer::Model
        SERVICE = 'SoftLayer_Product_Package_Type'
        attr_accessor :id
        attr_accessor :key_name
        attr_accessor :name
        attr_accessor :package_count
        attr_accessor :packages

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::Product::Package::Type])
        end

        def get_object
          request(:get_object, Softlayer::Product::Package::Type)
        end

        def get_packages
          request(:get_packages, Array[Softlayer::Product::Package])
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :id, type: Integer
          property :key_name, type: String
          property :name, type: String
          property :package_count, type: BigDecimal
        end
      end
    end
  end
end
