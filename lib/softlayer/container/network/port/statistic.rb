module Softlayer
  module Container
    module Network
      module Port
        class Statistic < Softlayer::Entity
          attr_accessor :administrative_status
          attr_accessor :in_discard_packets
          attr_accessor :in_error_packets
          attr_accessor :in_octets
          attr_accessor :in_unicast_packets
          attr_accessor :maximum_transmission_unit
          attr_accessor :operational_status
          attr_accessor :out_discard_packets
          attr_accessor :out_error_packets
          attr_accessor :out_octets
          attr_accessor :out_unicast_packets
          attr_accessor :port_duplex
          attr_accessor :speed

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :administrative_status, type: Integer
            property :in_discard_packets, type: BigDecimal
            property :in_error_packets, type: BigDecimal
            property :in_octets, type: BigDecimal
            property :in_unicast_packets, type: BigDecimal
            property :maximum_transmission_unit, type: BigDecimal
            property :operational_status, type: Integer
            property :out_discard_packets, type: BigDecimal
            property :out_error_packets, type: BigDecimal
            property :out_octets, type: BigDecimal
            property :out_unicast_packets, type: BigDecimal
            property :port_duplex, type: BigDecimal
            property :speed, type: BigDecimal
          end
        end
      end
    end
  end
end
