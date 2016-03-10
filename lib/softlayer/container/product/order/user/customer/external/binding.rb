module Softlayer
  module Container
    module Product
      class Order
        module User
          module Customer
            module External
              class Binding < Softlayer::Container::Product::Order
                attr_accessor :external_id
                attr_accessor :user_id
                attr_accessor :vendor_id

                class Representer < Softlayer::Container::Product::Order::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :external_id, type: String
                  property :user_id, type: Integer
                  property :vendor_id, type: Integer
                end
              end
            end
          end
        end
      end
    end
  end
end
