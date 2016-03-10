module Softlayer
  module Container
    module Network
      module ContentDelivery
        module Authentication
          class ServiceEndpoint < Softlayer::Model
            attr_accessor :endpoint
            attr_accessor :protocol

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :endpoint, type: String
              property :protocol, type: String
            end
          end
        end
      end
    end
  end
end
