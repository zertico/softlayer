module Softlayer
  class Account
    module Regional
      module Registry
        class Detail
          module Version4
            module Person
              class Default < Softlayer::Account::Regional::Registry::Detail

                class Representer < Softlayer::Account::Regional::Registry::Detail::Representer
                  include Representable::Hash
                  include Representable::Coercion
                end
              end
            end
          end
        end
      end
    end
  end
end
