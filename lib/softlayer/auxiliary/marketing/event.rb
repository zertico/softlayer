module Softlayer
  module Auxiliary
    module Marketing
      class Event < Softlayer::Entity
        SERVICE = 'SoftLayer_Auxiliary_Marketing_Event'
        attr_accessor :create_date
        attr_accessor :enabled_flag
        attr_accessor :end_date
        attr_accessor :location
        attr_accessor :modify_date
        attr_accessor :start_date
        attr_accessor :title
        attr_accessor :url

        def self.get_marketing_events
          request(:get_marketing_events, Array[Softlayer::Auxiliary::Marketing::Event])
        end

        def get_object
          request(:get_object, Softlayer::Auxiliary::Marketing::Event)
        end

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :enabled_flag, type: Integer
          property :end_date, type: DateTime
          property :location, type: String
          property :modify_date, type: DateTime
          property :start_date, type: DateTime
          property :title, type: String
          property :url, type: String
        end
      end
    end
  end
end
