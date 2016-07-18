module Softlayer
  class Account
    module Authentication
      module OpenIdConnect
        autoload :Option, 'softlayer/account/authentication/open_id_connect/option'
        autoload :RegistrationInformation, 'softlayer/account/authentication/open_id_connect/registration_information'
      end
    end
  end
end
