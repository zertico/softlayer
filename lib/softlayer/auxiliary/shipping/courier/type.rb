module Softlayer
  module Auxiliary
    module Shipping
      class Courier
        class Type < Softlayer::Entity
          SERVICE = 'SoftLayer_Auxiliary_Shipping_Courier_Type'
          attr_accessor :description
          attr_accessor :id
          attr_accessor :key_name
          attr_accessor :name
          attr_accessor :courier_count
          attr_accessor :courier

          def get_courier
            request(:get_courier, Array[Softlayer::Auxiliary::Shipping::Courier])
          end

          def get_object
            request(:get_object, Softlayer::Auxiliary::Shipping::Courier::Type)
          end

          # key_name
          def self.get_type_by_key_name(message)
            request(:get_type_by_key_name, Softlayer::Auxiliary::Shipping::Courier::Type, message)
          end

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :description, type: String
            property :id, type: Integer
            property :key_name, type: String
            property :name, type: String
            property :courier_count, type: BigDecimal
          end
        end
      end
    end
  end
end
