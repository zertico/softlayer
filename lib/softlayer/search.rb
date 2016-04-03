module Softlayer
  class Search < Softlayer::Entity
    SERVICE = 'SoftLayer_Search'

    # search_string
    def self.advanced_search(message)
      request(:advanced_search, Array[Softlayer::Container::Search::Result], message)
    end

    def self.get_object_types
      request(:get_object_types, Array[Softlayer::Container::Search::ObjectType])
    end

    # search_string
    def self.search(message)
      request(:search, Array[Softlayer::Container::Search::Result], message)
    end

    class Representer < Softlayer::Entity::Representer
      include Representable::Hash
      include Representable::Coercion
    end
  end
end
