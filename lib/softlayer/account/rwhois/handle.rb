module Softlayer
  class Account
    module Rwhois
      class Handle < Softlayer::Entity
        attr_accessor :account_id
        attr_accessor :create_date
        attr_accessor :handle
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :account

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :account_id, type: Integer
          property :create_date, type: DateTime
          property :handle, type: String
          property :id, type: Integer
          property :modify_date, type: DateTime
        end
      end
    end
  end
end
