module Softlayer
  module Dns
    class Domain
      class Registration
        module Registrant
          autoload :Verification, 'softlayer/dns/domain/registration/registrant/verification'
        end
      end
    end
  end
end
