module Softlayer
  module Container
    module Utility
      module Network
        module Firewall
          module Rule
            class Attribute < Softlayer::Entity
              attr_accessor :actions
              attr_accessor :maximum_rule_count
              attr_accessor :protocols
              attr_accessor :source_ip_subnet_masks

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :maximum_rule_count, type: Integer
              end
            end
          end
        end
      end
    end
  end
end
