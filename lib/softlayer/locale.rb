module Softlayer
  class Locale < Softlayer::Entity
    SERVICE = 'SoftLayer_Locale'
    autoload :Country, 'softlayer/locale/country'
    autoload :StateProvince, 'softlayer/locale/state_province'
    autoload :Timezone, 'softlayer/locale/timezone'
    attr_accessor :friendly_name
    attr_accessor :id
    attr_accessor :language_tag
    attr_accessor :name

    # language_tag
    def self.get_closest_to_language_tag(message)
      request(:get_closest_to_language_tag, Softlayer::Locale, message)
    end

    def get_object
      request(:get_object, Softlayer::Locale)
    end

    class Representer < Softlayer::Entity::Representer
      include Representable::Hash
      include Representable::Coercion
      property :friendly_name, type: String
      property :id, type: Integer
      property :language_tag, type: String
      property :name, type: String
    end
  end
end
