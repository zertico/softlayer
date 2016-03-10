module Softlayer
  module Container
    module Dns
      module Domain
        module Registration
          class Nameserver < Softlayer::Model
            autoload :List, 'softlayer/container/dns/domain/registration/nameserver/list'
            attr_accessor :nameservers

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
