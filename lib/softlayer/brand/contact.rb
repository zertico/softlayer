module Softlayer
  class Brand
    class Contact < Softlayer::Model
      autoload :Type, 'softlayer/brand/contact/type'
      attr_accessor :address1
      attr_accessor :address2
      attr_accessor :alternate_phone
      attr_accessor :brand_contact_type_id
      attr_accessor :city
      attr_accessor :country
      attr_accessor :email
      attr_accessor :fax_phone
      attr_accessor :first_name
      attr_accessor :last_name
      attr_accessor :office_phone
      attr_accessor :postal_code
      attr_accessor :state
      attr_accessor :brand
      attr_accessor :brand_contact_type

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :address1, type: String
        property :address2, type: String
        property :alternate_phone, type: String
        property :brand_contact_type_id, type: Integer
        property :city, type: String
        property :country, type: String
        property :email, type: String
        property :fax_phone, type: String
        property :first_name, type: String
        property :last_name, type: String
        property :office_phone, type: String
        property :postal_code, type: String
        property :state, type: String
      end
    end
  end
end
