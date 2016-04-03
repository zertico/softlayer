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

        # disable_date
        def disable_locked_account(message)
          request(:disable_locked_account, Integer, message)
        end

        # account_id
        # disconnect_date
        def self.disconnect_compute(message)
          request(:disconnect_compute, Integer, message)
        end

        # account_id
        def self.get_account_history(message)
          request(:get_account_history, Array[Softlayer::Account::Lockdown::Request], message)
        end

        def get_object
          request(:get_object, Softlayer::Account::Lockdown::Request)
        end

        # reconnect_date
        def reconnect_compute(message)
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
