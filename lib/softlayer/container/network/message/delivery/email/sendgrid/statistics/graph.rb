module Softlayer
  module Container
    module Network
      module Message
        module Delivery
          class Email
            module Sendgrid
              class Statistics
                class Graph < Softlayer::Entity
                  attr_accessor :graph_error
                  attr_accessor :graph_image
                  attr_accessor :graph_title

                  class Representer < Softlayer::Entity::Representer
                    include Representable::Hash
                    include Representable::Coercion
                    property :graph_error, type: String
                    property :graph_title, type: String
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
