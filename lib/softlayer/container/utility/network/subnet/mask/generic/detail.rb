module Softlayer
  module Container
    module Utility
      module Network
        module Subnet
          module Mask
            module Generic
              class Detail < Softlayer::Entity
                attr_accessor :cidr
                attr_accessor :description
                attr_accessor :mask

                class Representer < Softlayer::Entity::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :cidr, type: String
                  property :description, type: String
                  property :mask, type: String
                end
              end
            end
          end
        end
      end
    end
  end
end
