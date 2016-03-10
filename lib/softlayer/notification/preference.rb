module Softlayer
  class Notification
    class Preference < Softlayer::Model
      attr_accessor :description
      attr_accessor :id
      attr_accessor :key_name
      attr_accessor :maximum_value
      attr_accessor :minimum_value
      attr_accessor :name
      attr_accessor :units
      attr_accessor :value

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :description, type: String
        property :id, type: Integer
        property :key_name, type: String
        property :maximum_value, type: String
        property :minimum_value, type: String
        property :name, type: String
        property :units, type: String
        property :value, type: String
      end
    end
  end
end
