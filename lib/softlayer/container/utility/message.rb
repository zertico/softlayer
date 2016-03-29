module Softlayer
  module Container
    module Utility
      class Message < Softlayer::Entity
        attr_accessor :create_date
        attr_accessor :id
        attr_accessor :message
        attr_accessor :modify_date
        attr_accessor :summary

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :id, type: Integer
          property :message, type: String
          property :modify_date, type: DateTime
          property :summary, type: String
        end
      end
    end
  end
end
