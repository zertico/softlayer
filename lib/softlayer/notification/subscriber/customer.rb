module Softlayer
  class Notification
    class Subscriber
      class Customer < Softlayer::Notification::Subscriber
        attr_accessor :subscriber_record

        class Representer < Softlayer::Notification::Subscriber::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end
