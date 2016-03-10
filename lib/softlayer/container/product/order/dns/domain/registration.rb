module Softlayer
  module Container
    module Product
      class Order
        module Dns
          module Domain
            class Registration < Softlayer::Container::Product::Order
              attr_accessor :administrative_contact
              attr_accessor :billing_contact
              attr_accessor :domain_registration_list
              attr_accessor :owner_contact
              attr_accessor :registration_type
              attr_accessor :technical_contact

              class Representer < Softlayer::Container::Product::Order::Representer
                include Representable::Hash
                include Representable::Coercion
                property :registration_type, type: String
              end
            end
          end
        end
      end
    end
  end
end
