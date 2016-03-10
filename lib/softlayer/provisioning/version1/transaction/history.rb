module Softlayer
  module Provisioning
    module Version1
      class Transaction
        class History < Softlayer::Model
          attr_accessor :finish_date
          attr_accessor :guest_id
          attr_accessor :hardware_id
          attr_accessor :host_id
          attr_accessor :id
          attr_accessor :start_date
          attr_accessor :transaction_id
          attr_accessor :transaction_status_id
          attr_accessor :guest
          attr_accessor :hardware
          attr_accessor :transaction
          attr_accessor :transaction_status

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :finish_date, type: DateTime
            property :guest_id, type: Integer
            property :hardware_id, type: Integer
            property :host_id, type: Integer
            property :id, type: Integer
            property :start_date, type: DateTime
            property :transaction_id, type: Integer
            property :transaction_status_id, type: Integer
          end
        end
      end
    end
  end
end
