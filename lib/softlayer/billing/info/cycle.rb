module Softlayer
  module Billing
    class Info
      class Cycle < Softlayer::Entity
        attr_accessor :current_cycle_end_date
        attr_accessor :current_cycle_start_date
        attr_accessor :next_cycle_start_date
        attr_accessor :previous_cycle_end_date
        attr_accessor :previous_cycle_start_date
        attr_accessor :account

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :current_cycle_end_date, type: DateTime
          property :current_cycle_start_date, type: DateTime
          property :next_cycle_start_date, type: DateTime
          property :previous_cycle_end_date, type: DateTime
          property :previous_cycle_start_date, type: DateTime
        end
      end
    end
  end
end
