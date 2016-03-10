module Softlayer
  module Container
    module Network
      module IntrusionProtection
        class Statistic < Softlayer::Model
          attr_accessor :attack_count
          attr_accessor :name

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :attack_count, type: Integer
            property :name, type: String
          end
        end
      end
    end
  end
end
