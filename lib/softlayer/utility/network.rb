module Softlayer
  module Utility
    class Network < Softlayer::Entity
      SERVICE = 'SoftLayer_Utility_Network'

      def self.is_pingable(address = nil)
        message = {address: address}
        request(:is_pingable, Boolean, message)
      end

      def self.ns_lookup(address = nil, type = nil)
        message = {address: address, type: type}
        request(:ns_lookup, String, message)
      end

      def self.ping(address = nil)
        message = {address: address}
        request(:ping, String, message)
      end

      def self.traceroute(address = nil)
        message = {address: address}
        request(:traceroute, String, message)
      end

      def self.whois(address = nil)
        message = {address: address}
        request(:whois, String, message)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
