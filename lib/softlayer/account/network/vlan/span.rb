module Softlayer
  class Account
    module Network
      module Vlan
        class Span < Softlayer::Model
          attr_accessor :enabled_flag
          attr_accessor :id
          attr_accessor :last_applied_date
          attr_accessor :last_verified_date
          attr_accessor :modify_date
          attr_accessor :account

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :enabled_flag, type: Boolean
            property :id, type: Integer
            property :last_applied_date, type: DateTime
            property :last_verified_date, type: DateTime
            property :modify_date, type: DateTime
          end
        end
      end
    end
  end
end
