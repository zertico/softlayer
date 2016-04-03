module Softlayer
  class Network
    class Monitor < Softlayer::Entity
      SERVICE = 'SoftLayer_Network_Monitor'
      autoload :Version1, 'softlayer/network/monitor/version1'

      # hardware
      # partial_ip_address
      def self.get_ip_addresses_by_hardware(message)
        request(:get_ip_addresses_by_hardware, Array[Softlayer::Network::Subnet::IpAddress], message)
      end

      # guest
      # partial_ip_address
      def self.get_ip_addresses_by_virtual_guest(message)
        request(:get_ip_addresses_by_virtual_guest, Array[Softlayer::Network::Subnet::IpAddress], message)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
