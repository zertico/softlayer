module Softlayer
  module User
    class Preference < Softlayer::Model
      autoload :Type, 'softlayer/user/preference/type'
      attr_accessor :value
      attr_accessor :description
      attr_accessor :type

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :value, type: String
        property :description, type: String
      end
    end
  end
end
