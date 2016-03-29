module Softlayer
  module Provisioning
    module Version1
      class Transaction < Softlayer::Entity
        autoload :Group, 'softlayer/provisioning/version1/transaction/group'
        autoload :History, 'softlayer/provisioning/version1/transaction/history'
        autoload :Status, 'softlayer/provisioning/version1/transaction/status'
        autoload :SubnetMigration, 'softlayer/provisioning/version1/transaction/subnet_migration'
        attr_accessor :create_date
        attr_accessor :elapsed_seconds
        attr_accessor :guest_id
        attr_accessor :hardware_id
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :status_change_date
        attr_accessor :loopback_count
        attr_accessor :pending_transaction_count
        attr_accessor :ticket_scheduled_action_reference_count
        attr_accessor :account
        attr_accessor :guest
        attr_accessor :hardware
        attr_accessor :loopback
        attr_accessor :pending_transactions
        attr_accessor :ticket_scheduled_action_reference
        attr_accessor :transaction_group
        attr_accessor :transaction_status

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :elapsed_seconds, type: Integer
          property :guest_id, type: Integer
          property :hardware_id, type: Integer
          property :id, type: Integer
          property :modify_date, type: DateTime
          property :status_change_date, type: DateTime
          property :loopback_count, type: BigDecimal
          property :pending_transaction_count, type: BigDecimal
          property :ticket_scheduled_action_reference_count, type: BigDecimal
        end
      end
    end
  end
end
