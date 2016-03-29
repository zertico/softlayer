module Softlayer
  module Container
    module Dns
      module Domain
        module Registration
          class Contact < Softlayer::Entity
            attr_accessor :address1
            attr_accessor :address2
            attr_accessor :address3
            attr_accessor :city
            attr_accessor :country
            attr_accessor :email
            attr_accessor :fax
            attr_accessor :first_name
            attr_accessor :last_name
            attr_accessor :organization_name
            attr_accessor :phone
            attr_accessor :postal_code
            attr_accessor :state
            attr_accessor :type

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :address1, type: String
              property :address2, type: String
              property :address3, type: String
              property :city, type: String
              property :country, type: String
              property :email, type: String
              property :fax, type: String
              property :first_name, type: String
              property :last_name, type: String
              property :organization_name, type: String
              property :phone, type: String
              property :postal_code, type: String
              property :state, type: String
              property :type, type: String
            end
          end
        end
      end
    end
  end
end
