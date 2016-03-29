module Softlayer
  module Abuse
    module Lockdown
      class Resource < Softlayer::Entity
        attr_accessor :account
        attr_accessor :invoice_item

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
