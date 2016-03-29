module Softlayer
  module Container
    module Dns
      module Domain
        module Registration
          module Registrant
            module Verification
              class StatusDetail < Softlayer::Entity
                attr_accessor :status
                attr_accessor :verification_deadline_date

                class Representer < Softlayer::Entity::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :verification_deadline_date, type: DateTime
                end
              end
            end
          end
        end
      end
    end
  end
end
