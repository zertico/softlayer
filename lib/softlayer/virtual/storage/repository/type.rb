module Softlayer
  module Virtual
    module Storage
      class Repository
        class Type < Softlayer::Model
          attr_accessor :description
          attr_accessor :name
          attr_accessor :storage_repository_count
          attr_accessor :storage_repositories

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :description, type: String
            property :name, type: String
            property :storage_repository_count, type: BigDecimal
          end
        end
      end
    end
  end
end
