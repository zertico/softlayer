module Softlayer
  module Container
    module Product
      class Order
        module Attribute
          class Organization < Softlayer::Entity
            attr_accessor :address
            attr_accessor :fax_number
            attr_accessor :organization_name
            attr_accessor :phone_number

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :fax_number, type: String
              property :organization_name, type: String
              property :phone_number, type: String
            end
          end
        end
      end
    end
  end
end
