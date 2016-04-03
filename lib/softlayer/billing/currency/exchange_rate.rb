module Softlayer
  module Billing
    class Currency
      class ExchangeRate < Softlayer::Entity
        SERVICE = 'SoftLayer_Billing_Currency_ExchangeRate'
        attr_accessor :effective_date
        attr_accessor :expiration_date
        attr_accessor :id
        attr_accessor :rate
        attr_accessor :funding_currency
        attr_accessor :local_currency

        # string_date
        def get_all_currency_exchange_rates(message)
          request(:get_all_currency_exchange_rates, Array[Softlayer::Billing::Currency::ExchangeRate], message)
        end

        def self.get_currencies
          request(:get_currencies, Array[Softlayer::Billing::Currency])
        end

        # to
        # from
        # effective_date
        def self.get_exchange_rate(message)
          request(:get_exchange_rate, Softlayer::Billing::Currency::ExchangeRate, message)
        end

        def get_funding_currency
          request(:get_funding_currency, Softlayer::Billing::Currency)
        end

        def get_local_currency
          request(:get_local_currency, Softlayer::Billing::Currency)
        end

        def get_object
          request(:get_object, Softlayer::Billing::Currency::ExchangeRate)
        end

        # price
        # format_options
        def get_price(message)
          request(:get_price, String, message)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :effective_date, type: DateTime
          property :expiration_date, type: DateTime
          property :id, type: Integer
          property :rate, type: Float
        end
      end
    end
  end
end
