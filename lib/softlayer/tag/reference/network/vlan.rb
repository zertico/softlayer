module Softlayer
  class Tag
    class Reference
      module Network
        class Vlan < Softlayer::Tag::Reference
          autoload :Firewall, 'softlayer/tag/reference/network/vlan/firewall'
          attr_accessor :resource

          class Representer < Softlayer::Tag::Reference::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
