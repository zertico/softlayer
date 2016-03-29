module Softlayer
  module Container
    module User
      module Data
        class Phone < Softlayer::Entity
          attr_accessor :country_code
          attr_accessor :extension
          attr_accessor :phone
          attr_accessor :phone_type

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :country_code, type: Integer
            property :extension, type: String
            property :phone, type: String
            property :phone_type, type: String
          end
        end
      end
    end
  end
end
