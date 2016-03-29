module Softlayer
  module Container
    module Product
      class Order
        class SshKeys < Softlayer::Entity
          attr_accessor :ssh_key_ids

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
