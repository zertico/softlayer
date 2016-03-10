module Softlayer
  module Container
    module Product
      class Order
        module Attribute
          class Contact < Softlayer::Model
            attr_accessor :address
            attr_accessor :email_address
            attr_accessor :fax_number
            attr_accessor :first_name
            attr_accessor :last_name
            attr_accessor :organization_name
            attr_accessor :phone_number
            attr_accessor :title

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :email_address, type: String
              property :fax_number, type: String
              property :first_name, type: String
              property :last_name, type: String
              property :organization_name, type: String
              property :phone_number, type: String
              property :title, type: String
            end
          end
        end
      end
    end
  end
end
