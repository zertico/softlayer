module Softlayer
  module Metric
    module Tracking
      class Object
        class Data
          module Network
            module ContentDelivery
              class Account < Softlayer::Metric::Tracking::Object::Data
                attr_accessor :file_name
                attr_accessor :pop_id

                class Representer < Softlayer::Metric::Tracking::Object::Data::Representer
                  include Representable::Hash
                  include Representable::Coercion
                  property :file_name, type: String
                  property :pop_id, type: Integer
                end
              end
            end
          end
        end
      end
    end
  end
end
