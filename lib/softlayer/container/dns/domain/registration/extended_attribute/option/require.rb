module Softlayer
  module Container
    module Dns
      module Domain
        module Registration
          class ExtendedAttribute
            class Option
              class Require < Softlayer::Entity
                attr_accessor :name

                class Representer < Softlayer::Entity::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :name, type: String
                end
              end
            end
          end
        end
      end
    end
  end
end
