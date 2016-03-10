module Softlayer
  module Software
    class Component
      class AntivirusSpyware
        class Mcafee < Softlayer::Software::Component::AntivirusSpyware
          autoload :Epo, 'softlayer/software/component/antivirus_spyware/mcafee/epo'

          class Representer < Softlayer::Software::Component::AntivirusSpyware::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
