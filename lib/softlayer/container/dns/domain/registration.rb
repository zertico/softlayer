module Softlayer
  module Container
    module Dns
      module Domain
        module Registration
          autoload :Contact, 'softlayer/container/dns/domain/registration/contact'
          autoload :ExtendedAttribute, 'softlayer/container/dns/domain/registration/extended_attribute'
          autoload :Information, 'softlayer/container/dns/domain/registration/information'
          autoload :List, 'softlayer/container/dns/domain/registration/list'
          autoload :Lookup, 'softlayer/container/dns/domain/registration/lookup'
          autoload :Nameserver, 'softlayer/container/dns/domain/registration/nameserver'
          autoload :Registrant, 'softlayer/container/dns/domain/registration/registrant'
          autoload :Transfer, 'softlayer/container/dns/domain/registration/transfer'
        end
      end
    end
  end
end
