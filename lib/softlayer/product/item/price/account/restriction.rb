module Softlayer
  module Product
    class Item
      class Price
        module Account
          class Restriction < Softlayer::Model
            attr_accessor :account_id
            attr_accessor :id
            attr_accessor :item_price_id
            attr_accessor :account
            attr_accessor :item_price

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :account_id, type: Integer
              property :id, type: Integer
              property :item_price_id, type: Integer
            end
          end
        end
      end
    end
  end
end
