module Softlayer
  class Account
    class Link < Softlayer::Entity
      autoload :Bluemix, 'softlayer/account/link/bluemix'
      autoload :OpenStack, 'softlayer/account/link/open_stack'
      autoload :ThePlanet, 'softlayer/account/link/the_planet'
      autoload :Vendor, 'softlayer/account/link/vendor'
      attr_accessor :account_id
      attr_accessor :create_date
      attr_accessor :destination_account_alphanumeric_id
      attr_accessor :destination_account_id
      attr_accessor :id
      attr_accessor :service_provider_id
      attr_accessor :account
      attr_accessor :service_provider

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :account_id, type: Integer
        property :create_date, type: DateTime
        property :destination_account_alphanumeric_id, type: String
        property :destination_account_id, type: Integer
        property :id, type: Integer
        property :service_provider_id, type: Integer
      end
    end
  end
end
