module Softlayer
  class Account
    class Link
      class Bluemix < Softlayer::Account::Link
        SERVICE = 'SoftLayer_Account_Link_Bluemix'

        def get_account
          request(:get_account, Softlayer::Account)
        end

        def get_object
          request(:get_object, Softlayer::Account::Link::Bluemix)
        end

        def get_service_provider
          request(:get_service_provider, Softlayer::Service::Provider)
        end

        def get_support_tier_type
          request(:get_support_tier_type, String)
        end

        class Representer < Softlayer::Account::Link::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
