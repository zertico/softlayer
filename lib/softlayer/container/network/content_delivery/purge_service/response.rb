module Softlayer
  module Container
    module Network
      module ContentDelivery
        module PurgeService
          class Response < Softlayer::Model
            attr_accessor :status_code
            attr_accessor :url

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :status_code, type: String
              property :url, type: String
            end
          end
        end
      end
    end
  end
end
