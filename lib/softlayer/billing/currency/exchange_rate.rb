module Softlayer
  module Billing
    class Currency
      class ExchangeRate < Softlayer::Model
        SERVICE = 'SoftLayer_Billing_Currency_ExchangeRate'
        attr_accessor :effective_date
        attr_accessor :expiration_date
        attr_accessor :id
        attr_accessor :rate
        attr_accessor :funding_currency
        attr_accessor :local_currency

        def get_all_currency_exchange_rates(string_date = nil)
          message = {string_date: string_date}
          request(:get_all_currency_exchange_rates, Array[Softlayer::Billing::Currency::ExchangeRate], message)
        end

        def self.get_currencies
          request(:get_currencies, Array[Softlayer::Billing::Currency])
        end

        def self.get_exchange_rate(to = nil, from = nil, effective_date = nil)
          message = {to: to, from: from, effective_date: effective_date}
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

        def get_price(price = nil, format_options = nil)
          message = {price: price, format_options: format_options}
          request(:get_price, String, message)
        end

        class Representer < Representable::Decorator
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
