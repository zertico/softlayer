module Softlayer
  module Container
    module Product
      class Order
        module Attribute
          class Address < Softlayer::Model
            attr_accessor :address_line1
            attr_accessor :address_line2
            attr_accessor :city
            attr_accessor :country_code
            attr_accessor :non_us_state
            attr_accessor :postal_code
            attr_accessor :state

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :address_line1, type: String
              property :address_line2, type: String
              property :city, type: String
              property :country_code, type: String
              property :non_us_state, type: String
              property :postal_code, type: String
              property :state, type: String
            end
          end
        end
      end
    end
  end
end
