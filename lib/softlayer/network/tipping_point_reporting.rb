module Softlayer
  class Network
    class TippingPointReporting < Softlayer::Entity
      SERVICE = 'SoftLayer_Network_TippingPointReporting'

      # signature_id
      # ip_address
      # subnet_mask
      # time_frame
      # direction
      def self.drill_down_attack(message)
        request(:drill_down_attack, Softlayer::Container::Network::IntrusionProtection::SubnetReport, message)
      end

      # number_of_attacks
      def self.get_main_statistics(message)
        request(:get_main_statistics, Array[Softlayer::Container::Network::IntrusionProtection::Statistics], message)
      end

      # ip_address
      # subnet_mask
      # time_frame
      # order_by
      # order_direction
      def self.get_report_for_ip_address_or_subnet(message)
        request(:get_report_for_ip_address_or_subnet, Array[Softlayer::Container::Network::IntrusionProtection::SubnetReport], message)
      end

      # time_frame
      # order_by
      # order_direction
      # return_subnet_groups
      def self.get_subnet_report_for_entire_account(message)
        request(:get_subnet_report_for_entire_account, Array[Softlayer::Container::Network::IntrusionProtection::SubnetReport], message)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
      end
    end
  end
end
