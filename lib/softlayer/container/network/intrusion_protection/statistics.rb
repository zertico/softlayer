module Softlayer
  module Container
    module Network
      module IntrusionProtection
        class Statistics < Softlayer::Entity
          attr_accessor :target
          attr_accessor :target_type
          attr_accessor :time_frame
          attr_accessor :top_attacks
          attr_accessor :total_attacks

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :target, type: String
            property :target_type, type: String
            property :time_frame, type: String
            property :total_attacks, type: Integer
          end
        end
      end
    end
  end
end
