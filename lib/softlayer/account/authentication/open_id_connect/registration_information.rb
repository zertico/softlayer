module Softlayer
  class Account
    module Authentication
      module OpenIdConnect
        class RegistrationInformation < Softlayer::Entity
          attr_accessor :existing_blue_id_flag
          attr_accessor :federated_email_domain_flag
          attr_accessor :user

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :existing_blue_id_flag, type: Boolean
            property :federated_email_domain_flag, type: Boolean
          end
        end
      end
    end
  end
end
