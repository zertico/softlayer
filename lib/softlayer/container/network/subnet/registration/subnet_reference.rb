module Softlayer
  module Container
    module Network
      module Subnet
        module Registration
          class SubnetReference < Softlayer::Model
            attr_accessor :registration_id
            attr_accessor :subnet_cidr

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :registration_id, type: Integer
              property :subnet_cidr, type: String
            end
          end
        end
      end
    end
  end
end
