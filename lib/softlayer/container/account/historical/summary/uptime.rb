module Softlayer
  module Container
    module Account
      module Historical
        class Summary
          class Uptime < Softlayer::Container::Account::Historical::Summary

            class Representer < Softlayer::Container::Account::Historical::Summary::Representer
              include Representable::Hash
              include Representable::Coercion
            end
          end
        end
      end
    end
  end
end
