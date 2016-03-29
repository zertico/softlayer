module Softlayer
  class Notification
    module Occurrence
      class Account < Softlayer::Entity
        attr_accessor :active
        attr_accessor :account
        attr_accessor :last_notification_update
        attr_accessor :notification_occurrence_event

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :active, type: Integer
        end
      end
    end
  end
end
