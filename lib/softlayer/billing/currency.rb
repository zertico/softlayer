module Softlayer
  module Billing
    class Currency < Softlayer::Entity
      SERVICE = 'SoftLayer_Billing_Currency'
      autoload :ExchangeRate, 'softlayer/billing/currency/exchange_rate'
      attr_accessor :id
      attr_accessor :key_name
      attr_accessor :name

      def self.get_all_objects
        request(:get_all_objects, Array[Softlayer::Billing::Currency])
      end

      def get_object
        request(:get_object, Softlayer::Billing::Currency)
      end

      def get_price(price = nil, format_options = nil)
        message = {price: price, format_options: format_options}
        request(:get_price, String, message)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :id, type: Integer
        property :key_name, type: String
        property :name, type: String
      end
    end
  end
end
