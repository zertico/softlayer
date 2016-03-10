module Softlayer
  module Container
    module Network
      module Authentication
        class Data < Softlayer::Model
          attr_accessor :host
          attr_accessor :password
          attr_accessor :port
          attr_accessor :type
          attr_accessor :username

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :host, type: String
            property :password, type: String
            property :port, type: Integer
            property :type, type: String
            property :username, type: String
          end
        end
      end
    end
  end
end
