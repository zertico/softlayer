module Softlayer
  module Container
    module Dns
      module Domain
        module Registration
          class ExtendedAttribute
            class Option < Softlayer::Entity
              autoload :Require, 'softlayer/container/dns/domain/registration/extended_attribute/option/require'
              attr_accessor :description
              attr_accessor :require_extended_attributes
              attr_accessor :title
              attr_accessor :value

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :description, type: String
                property :title, type: String
                property :value, type: String
              end
            end
          end
        end
      end
    end
  end
end
