module Softlayer
  class Account
    module Authentication
      autoload :Attribute, 'softlayer/account/authentication/attribute'
      autoload :Saml, 'softlayer/account/authentication/saml'
      autoload :OpenIdConnect, 'softlayer/account/authentication/open_id_connect'
    end
  end
end
