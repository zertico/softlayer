module Softlayer
  module User
    class Customer
      class Link < Softlayer::Entity
        autoload :ThePlanet, 'softlayer/user/customer/link/the_planet'
        attr_accessor :create_date
        attr_accessor :default_flag
        attr_accessor :destination_user_alphanumeric_id
        attr_accessor :destination_user_id
        attr_accessor :id
        attr_accessor :service_provider_id
        attr_accessor :user_id
        attr_accessor :service_provider
        attr_accessor :user

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :default_flag, type: Integer
          property :destination_user_alphanumeric_id, type: String
          property :destination_user_id, type: Integer
          property :id, type: Integer
          property :service_provider_id, type: Integer
          property :user_id, type: Integer
        end
      end
    end
  end
end
