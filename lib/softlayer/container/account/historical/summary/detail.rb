module Softlayer
  module Container
    module Account
      module Historical
        class Summary
          class Detail < Softlayer::Entity
            autoload :Uptime, 'softlayer/container/account/historical/summary/detail/uptime'
            attr_accessor :end_date
            attr_accessor :start_date

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :end_date, type: DateTime
              property :start_date, type: DateTime
            end
          end
        end
      end
    end
  end
end
