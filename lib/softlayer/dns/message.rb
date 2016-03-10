module Softlayer
  module Dns
    class Message < Softlayer::Model
      attr_accessor :create_date
      attr_accessor :id
      attr_accessor :message
      attr_accessor :priority
      attr_accessor :domain
      attr_accessor :resource_record
      attr_accessor :secondary

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :create_date, type: DateTime
        property :id, type: Integer
        property :message, type: String
        property :priority, type: String
      end
    end
  end
end
