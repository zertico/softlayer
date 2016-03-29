module Softlayer
  module Billing
    class Order
      class Note < Softlayer::Entity
        attr_accessor :create_date
        attr_accessor :employee
        attr_accessor :order

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
        end
      end
    end
  end
end
