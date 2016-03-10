module Softlayer
  module Software
    class Component
      class HostIps
        class Mcafee < Softlayer::Software::Component::HostIps
          autoload :Epo, 'softlayer/software/component/host_ips/mcafee/epo'

          class Representer < Softlayer::Software::Component::HostIps::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
