module Softlayer
  module Resource
    class Group
      class Role < Softlayer::Model
        attr_accessor :description
        attr_accessor :id
        attr_accessor :key_name
        attr_accessor :member_link_count
        attr_accessor :member_links

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :description, type: String
          property :id, type: Integer
          property :key_name, type: String
          property :member_link_count, type: BigDecimal
        end
      end
    end
  end
end
