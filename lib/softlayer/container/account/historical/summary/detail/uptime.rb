module Softlayer
  module Container
    module Account
      module Historical
        class Summary
          class Detail
            class Uptime < Softlayer::Container::Account::Historical::Summary::Detail
              attr_accessor :cloud_computing_instance
              attr_accessor :configuration_value
              attr_accessor :data
              attr_accessor :hardware

              class Representer < Softlayer::Container::Account::Historical::Summary::Detail::Representer
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
