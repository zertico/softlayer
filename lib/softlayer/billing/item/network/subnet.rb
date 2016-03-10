module Softlayer
  module Billing
    class Item
      module Network
        class Subnet < Softlayer::Billing::Item
          autoload :IpAddress, 'softlayer/billing/item/network/subnet/ip_address'
          attr_accessor :resource_name
          attr_accessor :resource_table_id
          attr_accessor :resource

          class Representer < Softlayer::Billing::Item::Representer
            include Representable::Hash
            include Representable::Coercion
            property :resource_name, type: String
            property :resource_table_id, type: Integer
          end
        end
      end
    end
  end
end
