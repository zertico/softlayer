module Softlayer
  class Locale
    class Timezone < Softlayer::Entity
      SERVICE = 'SoftLayer_Locale_Timezone'
      attr_accessor :id
      attr_accessor :long_name
      attr_accessor :name
      attr_accessor :offset
      attr_accessor :short_name

      def self.get_all_objects
        request(:get_all_objects, Array[Softlayer::Locale::Timezone])
      end

      def get_object
        request(:get_object, Softlayer::Locale::Timezone)
      end

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :id, type: Integer
        property :long_name, type: String
        property :name, type: String
        property :offset, type: String
        property :short_name, type: String
      end
    end
  end
end
