module Softlayer
  module Abuse
    module Lockdown
      class Resource < Softlayer::Model
        attr_accessor :account
        attr_accessor :invoice_item

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
