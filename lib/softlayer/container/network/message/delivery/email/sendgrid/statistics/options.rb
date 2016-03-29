module Softlayer
  module Container
    module Network
      module Message
        module Delivery
          class Email
            module Sendgrid
              class Statistics
                class Options < Softlayer::Entity
                  attr_accessor :aggregates_only
                  attr_accessor :category
                  attr_accessor :days
                  attr_accessor :end_date
                  attr_accessor :selected_statistics
                  attr_accessor :start_date

                  class Representer < Softlayer::Entity::Representer
                    include Representable::Hash
                    include Representable::Coercion
                    property :aggregates_only, type: Boolean
                    property :category, type: String
                    property :days, type: Integer
                    property :end_date, type: DateTime
                    property :start_date, type: DateTime
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
