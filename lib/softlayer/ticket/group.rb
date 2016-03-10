module Softlayer
  class Ticket
    class Group < Softlayer::Model
      autoload :Category, 'softlayer/ticket/group/category'
      attr_accessor :id
      attr_accessor :name
      attr_accessor :ticket_group_category_id
      attr_accessor :assigned_brand_count
      attr_accessor :assigned_brands
      attr_accessor :category

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :id, type: Integer
        property :name, type: String
        property :ticket_group_category_id, type: Integer
        property :assigned_brand_count, type: BigDecimal
      end
    end
  end
end
