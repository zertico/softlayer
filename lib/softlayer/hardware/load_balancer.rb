module Softlayer
  class Hardware
    class LoadBalancer < Softlayer::Hardware
      attr_accessor :user_count
      attr_accessor :model_family
      attr_accessor :users

      class Representer < Softlayer::Hardware::Representer
        include Representable::Hash
        include Representable::Coercion
        property :user_count, type: BigDecimal
        property :model_family, type: String
      end
    end
  end
end
