module Softlayer
  class Locale
    class Country < Softlayer::Model
      SERVICE = 'SoftLayer_Locale_Country'
      attr_accessor :is_european_union_flag
      attr_accessor :long_name
      attr_accessor :short_name
      attr_accessor :state_count
      attr_accessor :states

      def self.get_available_countries
        request(:get_available_countries, Array[Softlayer::Locale::Country])
      end

      def self.get_countries
        request(:get_countries, Array[Softlayer::Locale::Country])
      end

      def get_object
        request(:get_object, Softlayer::Locale::Country)
      end

      def get_states
        request(:get_states, Array[Softlayer::Locale::StateProvince])
      end

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :is_european_union_flag, type: Integer
        property :long_name, type: String
        property :short_name, type: String
        property :state_count, type: BigDecimal
      end
    end
  end
end
