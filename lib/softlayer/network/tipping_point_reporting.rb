module Softlayer
  class Network
    class TippingPointReporting < Softlayer::Entity
      SERVICE = 'SoftLayer_Network_TippingPointReporting'

      def self.drill_down_attack(signature_id = nil, ip_address = nil, subnet_mask = nil, time_frame = nil, direction = nil)
        message = {signature_id: signature_id, ip_address: ip_address, subnet_mask: subnet_mask, time_frame: time_frame, direction: direction}
        request(:drill_down_attack, Softlayer::Container::Network::IntrusionProtection::SubnetReport, message)
      end

      def self.get_main_statistics(number_of_attacks = nil)
        message = {number_of_attacks: number_of_attacks}
        request(:get_main_statistics, Array[Softlayer::Container::Network::IntrusionProtection::Statistics], message)
      end

      def self.get_report_for_ip_address_or_subnet(ip_address = nil, subnet_mask = nil, time_frame = nil, order_by = nil, order_direction = nil)
        message = {ip_address: ip_address, subnet_mask: subnet_mask, time_frame: time_frame, order_by: order_by, order_direction: order_direction}
        request(:get_report_for_ip_address_or_subnet, Array[Softlayer::Container::Network::IntrusionProtection::SubnetReport], message)
      end

      def self.get_subnet_report_for_entire_account(time_frame = nil, order_by = nil, order_direction = nil, return_subnet_groups = nil)
        message = {time_frame: time_frame, order_by: order_by, order_direction: order_direction, return_subnet_groups: return_subnet_groups}
        request(:get_subnet_report_for_entire_account, Array[Softlayer::Container::Network::IntrusionProtection::SubnetReport], message)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
