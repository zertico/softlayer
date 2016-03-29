module Softlayer
  module Container
    module Dns
      module Domain
        module Registration
          class Lookup < Softlayer::Entity
            autoload :Items, 'softlayer/container/dns/domain/registration/lookup/items'
            attr_accessor :items

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
