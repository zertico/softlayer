module Softlayer
  module Container
    module User
      module Customer
        module Portal
          class MobileToken < Softlayer::Container::User::Customer::Portal::Token
            attr_accessor :has_external_binding

            class Representer < Softlayer::Container::User::Customer::Portal::Token::Representer
              include Representable::Hash
              include Representable::Coercion
              property :has_external_binding, type: Boolean
            end
          end
        end
      end
    end
  end
end
