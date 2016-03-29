module Softlayer
  module Container
    module Dns
      module Domain
        module Registration
          class Lookup
            class Items < Softlayer::Entity
              attr_accessor :domain_name
              attr_accessor :status

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :domain_name, type: String
                property :status, type: String
              end
            end
          end
        end
      end
    end
  end
end
