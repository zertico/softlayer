module Softlayer
  class Hardware
    class Firewall < Softlayer::Hardware::Switch
      attr_accessor :user_count
      attr_accessor :users

      class Representer < Softlayer::Hardware::Switch::Representer
        include Representable::Hash
        include Representable::Coercion
        property :user_count, type: BigDecimal
      end
    end
  end
end
