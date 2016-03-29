module Softlayer
  class Hardware
    class Group < Softlayer::Entity
      attr_accessor :domain
      attr_accessor :hostname
      attr_accessor :id
      attr_accessor :downlink_server_count
      attr_accessor :downlink_virtual_guest_count
      attr_accessor :downstream_network_hardware_count
      attr_accessor :downstream_network_hardware_with_incident_count
      attr_accessor :network_monitor_attached_down_hardware_count
      attr_accessor :network_monitor_attached_down_virtual_guest_count
      attr_accessor :downlink_servers
      attr_accessor :downlink_virtual_guests
      attr_accessor :downstream_network_hardware
      attr_accessor :downstream_network_hardware_with_incidents
      attr_accessor :hardware_chassis
      attr_accessor :network_monitor_attached_down_hardware
      attr_accessor :network_monitor_attached_down_virtual_guests
      attr_accessor :network_status

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :domain, type: String
        property :hostname, type: String
        property :id, type: Integer
        property :downlink_server_count, type: BigDecimal
        property :downlink_virtual_guest_count, type: BigDecimal
        property :downstream_network_hardware_count, type: BigDecimal
        property :downstream_network_hardware_with_incident_count, type: BigDecimal
        property :network_monitor_attached_down_hardware_count, type: BigDecimal
        property :network_monitor_attached_down_virtual_guest_count, type: BigDecimal
        property :network_status, type: String
      end
    end
  end
end
