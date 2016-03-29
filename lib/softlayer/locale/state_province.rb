module Softlayer
  class Locale
    class StateProvince < Softlayer::Entity
      attr_accessor :long_name
      attr_accessor :short_name

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :long_name, type: String
        property :short_name, type: String
      end
    end
  end
end
