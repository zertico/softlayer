module Softlayer
  class Account
    module Authentication
      autoload :Attribute, 'softlayer/account/authentication/attribute'
      autoload :Saml, 'softlayer/account/authentication/saml'
    end
  end
end
