module Softlayer
  module Container
    module Network
      module ContentDelivery
        module Bandwidth
          class Summary
            class Detail < Softlayer::Container::Network::ContentDelivery::Bandwidth::Summary
              attr_accessor :duration
              attr_accessor :view_count

              class Representer < Softlayer::Container::Network::ContentDelivery::Bandwidth::Summary::Representer
                include Representable::Hash
                include Representable::Coercion
                property :duration, type: Float
                property :view_count, type: Integer
              end
            end
          end
        end
      end
    end
  end
end
