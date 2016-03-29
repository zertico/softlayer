module Softlayer
  module Container
    module Dns
      module Domain
        module Registration
          class Information < Softlayer::Entity
            attr_accessor :contacts
            attr_accessor :expire_date
            attr_accessor :nameservers
            attr_accessor :registry_create_date
            attr_accessor :registry_expire_date
            attr_accessor :registry_update_date

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :expire_date, type: DateTime
              property :registry_create_date, type: DateTime
              property :registry_expire_date, type: DateTime
              property :registry_update_date, type: DateTime
            end
          end
        end
      end
    end
  end
end
