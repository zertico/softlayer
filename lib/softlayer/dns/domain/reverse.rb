module Softlayer
  module Dns
    class Domain
      class Reverse < Softlayer::Dns::Domain
        autoload :Version4, 'softlayer/dns/domain/reverse/version4'
        autoload :Version6, 'softlayer/dns/domain/reverse/version6'
        attr_accessor :network_address

        class Representer < Softlayer::Dns::Domain::Representer
          include Representable::Hash
          include Representable::Coercion
          property :network_address, type: String
        end
      end
    end
  end
end
