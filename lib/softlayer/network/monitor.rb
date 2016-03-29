module Softlayer
  class Network
    class Monitor < Softlayer::Entity
      SERVICE = 'SoftLayer_Network_Monitor'
      autoload :Version1, 'softlayer/network/monitor/version1'

      def self.get_ip_addresses_by_hardware(hardware = nil, partial_ip_address = nil)
        message = {hardware: hardware, partial_ip_address: partial_ip_address}
        request(:get_ip_addresses_by_hardware, Array[Softlayer::Network::Subnet::IpAddress], message)
      end

      def self.get_ip_addresses_by_virtual_guest(guest = nil, partial_ip_address = nil)
        message = {guest: guest, partial_ip_address: partial_ip_address}
        request(:get_ip_addresses_by_virtual_guest, Array[Softlayer::Network::Subnet::IpAddress], message)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
