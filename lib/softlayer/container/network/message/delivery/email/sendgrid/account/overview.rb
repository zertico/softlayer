module Softlayer
  module Container
    module Network
      module Message
        module Delivery
          class Email
            module Sendgrid
              module Account
                class Overview < Softlayer::Entity
                  attr_accessor :credits_allowed
                  attr_accessor :credits_overage
                  attr_accessor :credits_remain
                  attr_accessor :credits_used
                  attr_accessor :package
                  attr_accessor :reputation
                  attr_accessor :requests

                  class Representer < Softlayer::Entity::Representer
                    include Representable::Hash
                    include Representable::Coercion
                    property :credits_allowed, type: Integer
                    property :credits_overage, type: Integer
                    property :credits_remain, type: Integer
                    property :credits_used, type: Integer
                    property :package, type: String
                    property :reputation, type: Integer
                    property :requests, type: Integer
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
