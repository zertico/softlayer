module Softlayer
  module Billing
    class Order
      class Note < Softlayer::Model
        attr_accessor :create_date
        attr_accessor :employee
        attr_accessor :order

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
        end
      end
    end
  end
end
