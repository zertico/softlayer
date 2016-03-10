module Softlayer
  module User
    class Customer
      module Access
        class Authentication < Softlayer::Model
          attr_accessor :create_date
          attr_accessor :ip_address
          attr_accessor :success_flag
          attr_accessor :user_id
          attr_accessor :username
          attr_accessor :user

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :create_date, type: DateTime
            property :ip_address, type: String
            property :success_flag, type: Boolean
            property :user_id, type: Integer
            property :username, type: String
          end
        end
      end
    end
  end
end
