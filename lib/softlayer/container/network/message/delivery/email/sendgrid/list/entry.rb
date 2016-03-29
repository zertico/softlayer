module Softlayer
  module Container
    module Network
      module Message
        module Delivery
          class Email
            module Sendgrid
              module List
                class Entry < Softlayer::Entity
                  attr_accessor :created
                  attr_accessor :email
                  attr_accessor :reason
                  attr_accessor :status

                  class Representer < Softlayer::Entity::Representer
                    include Representable::Hash
                    include Representable::Coercion
                    property :created, type: String
                    property :email, type: String
                    property :reason, type: String
                    property :status, type: String
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
