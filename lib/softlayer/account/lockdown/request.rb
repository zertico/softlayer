module Softlayer
  class Account
    module Lockdown
      class Request < Softlayer::Entity
        SERVICE = 'SoftLayer_Account_Lockdown_Request'
        attr_accessor :account_id
        attr_accessor :action
        attr_accessor :create_date
        attr_accessor :id
        attr_accessor :modify_date
        attr_accessor :status

        def cancel_request
          request(:cancel_request, nil)
        end

        def disable_locked_account(disable_date = nil)
          message = {disable_date: disable_date}
          request(:disable_locked_account, Integer, message)
        end

        def self.disconnect_compute(account_id = nil, disconnect_date = nil)
          message = {account_id: account_id, disconnect_date: disconnect_date}
          request(:disconnect_compute, Integer, message)
        end

        def self.get_account_history(account_id = nil)
          message = {account_id: account_id}
          request(:get_account_history, Array[Softlayer::Account::Lockdown::Request], message)
        end

        def get_object
          request(:get_object, Softlayer::Account::Lockdown::Request)
        end

        def reconnect_compute(reconnect_date = nil)
          message = {reconnect_date: reconnect_date}
          request(:reconnect_compute, Integer, message)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :account_id, type: Integer
          property :action, type: String
          property :create_date, type: DateTime
          property :id, type: Integer
          property :modify_date, type: DateTime
          property :status, type: String
        end
      end
    end
  end
end
