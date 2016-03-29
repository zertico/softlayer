module Softlayer
  module Container
    module Dns
      module Domain
        module Registration
          class ExtendedAttribute < Softlayer::Entity
            autoload :Configuration, 'softlayer/container/dns/domain/registration/extended_attribute/configuration'
            autoload :Option, 'softlayer/container/dns/domain/registration/extended_attribute/option'
            attr_accessor :child_flag
            attr_accessor :description
            attr_accessor :name
            attr_accessor :options
            attr_accessor :required_flag
            attr_accessor :user_defined_flag

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :child_flag, type: Boolean
              property :description, type: String
              property :name, type: String
              property :required_flag, type: Integer
              property :user_defined_flag, type: Boolean
            end
          end
        end
      end
    end
  end
end
