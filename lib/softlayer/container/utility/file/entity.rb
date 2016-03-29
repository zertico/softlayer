module Softlayer
  module Container
    module Utility
      module File
        class Entity < Softlayer::Entity
          attr_accessor :content
          attr_accessor :content_type
          attr_accessor :create_date
          attr_accessor :delete_date
          attr_accessor :id
          attr_accessor :is_shared
          attr_accessor :modify_date
          attr_accessor :name
          attr_accessor :owner
          attr_accessor :size
          attr_accessor :type
          attr_accessor :version

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :content_type, type: String
            property :create_date, type: DateTime
            property :delete_date, type: DateTime
            property :id, type: String
            property :is_shared, type: Integer
            property :modify_date, type: DateTime
            property :name, type: String
            property :owner, type: String
            property :size, type: BigDecimal
            property :type, type: String
            property :version, type: Integer
          end
        end
      end
    end
  end
end
