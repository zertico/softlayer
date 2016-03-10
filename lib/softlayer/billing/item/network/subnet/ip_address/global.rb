module Softlayer
  module Billing
    class Item
      module Network
        class Subnet
          module IpAddress
            class Global < Softlayer::Billing::Item::Network::Subnet

              class Representer < Softlayer::Billing::Item::Network::Subnet::Representer
                include Representable::Hash
                include Representable::Coercion
              end
            end
          end
        end
      end
    end
  end
end
