module Softlayer
  module Provisioning
    module Version1
      class Transaction
        class SubnetMigration < Softlayer::Provisioning::Version1::Transaction

          class Representer < Softlayer::Provisioning::Version1::Transaction::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end
