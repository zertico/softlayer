module Softlayer
  module Container
    module Dns
      module Domain
        module Registration
          class List < Softlayer::Model
            attr_accessor :domain_name
            attr_accessor :encoding_type
            attr_accessor :extended_attribute_configuration
            attr_accessor :registration_period

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :domain_name, type: String
              property :encoding_type, type: String
              property :registration_period, type: Integer
            end
          end
        end
      end
    end
  end
end
