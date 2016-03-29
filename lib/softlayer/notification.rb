module Softlayer
  class Notification < Softlayer::Entity
    SERVICE = 'SoftLayer_Notification'
    autoload :Mobile, 'softlayer/notification/mobile'
    autoload :Preference, 'softlayer/notification/preference'
    autoload :Subscriber, 'softlayer/notification/subscriber'
    autoload :Delivery, 'softlayer/notification/delivery'
    autoload :Occurrence, 'softlayer/notification/occurrence'
    autoload :User, 'softlayer/notification/user'
    attr_accessor :id
    attr_accessor :key_name
    attr_accessor :name
    attr_accessor :preference_count
    attr_accessor :required_preference_count
    attr_accessor :preferences
    attr_accessor :required_preferences

    def self.get_all_objects
      request(:get_all_objects, Array[Softlayer::Notification])
    end

    def get_object
      request(:get_object, Softlayer::Notification)
    end

    def get_preferences
      request(:get_preferences, Array[Softlayer::Notification::Preference])
    end

    def get_required_preferences
      request(:get_required_preferences, Array[Softlayer::Notification::Preference])
    end

    class Representer < Softlayer::Entity::Representer
      include Representable::Hash
      include Representable::Coercion
      property :id, type: Integer
      property :key_name, type: String
      property :name, type: String
      property :preference_count, type: BigDecimal
      property :required_preference_count, type: BigDecimal
    end
  end
end
