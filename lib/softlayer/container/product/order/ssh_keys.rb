module Softlayer
  module Container
    module Product
      class Order
        class SshKeys < Softlayer::Model
          attr_accessor :ssh_key_ids

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
