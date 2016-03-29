module Softlayer
  class Search < Softlayer::Entity
    SERVICE = 'SoftLayer_Search'

    def self.advanced_search(search_string = nil)
      message = {search_string: search_string}
      request(:advanced_search, Array[Softlayer::Container::Search::Result], message)
    end

    def self.get_object_types
      request(:get_object_types, Array[Softlayer::Container::Search::ObjectType])
    end

    def self.search(search_string = nil)
      message = {search_string: search_string}
      request(:search, Array[Softlayer::Container::Search::Result], message)
    end

    class Representer < Softlayer::Entity::Representer
      include Representable::Hash
      include Representable::Coercion
    end
  end
end
