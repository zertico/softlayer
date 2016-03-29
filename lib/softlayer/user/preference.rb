module Softlayer
  module User
    class Preference < Softlayer::Entity
      autoload :Type, 'softlayer/user/preference/type'
      attr_accessor :value
      attr_accessor :description
      attr_accessor :type

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :value, type: String
        property :description, type: String
      end
    end
  end
end
