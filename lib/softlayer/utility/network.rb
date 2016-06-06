module Softlayer
  module Utility
    class Network < Softlayer::Entity
      SERVICE = 'SoftLayer_Utility_Network'

      # address
      # type
      def self.ns_lookup(message)
        request(:ns_lookup, String, message)
      end

      # address
      def self.whois(message)
        request(:whois, String, message)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
