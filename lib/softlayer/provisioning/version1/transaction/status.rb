module Softlayer
  module Provisioning
    module Version1
      class Transaction
        class Status < Softlayer::Model
          attr_accessor :average_duration
          attr_accessor :friendly_name
          attr_accessor :name
          attr_accessor :non_completed_transaction_count
          attr_accessor :non_completed_transactions

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :average_duration, type: Float
            property :friendly_name, type: String
            property :name, type: String
            property :non_completed_transaction_count, type: BigDecimal
          end
        end
      end
    end
  end
end
