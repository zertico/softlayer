module Softlayer
  class Tag
    class Reference < Softlayer::Model
      autoload :Hardware, 'softlayer/tag/reference/hardware'
      autoload :Network, 'softlayer/tag/reference/network'
      autoload :Resource, 'softlayer/tag/reference/resource'
      autoload :Virtual, 'softlayer/tag/reference/virtual'
      attr_accessor :emp_record_id
      attr_accessor :id
      attr_accessor :resource_table_id
      attr_accessor :tag_id
      attr_accessor :tag_type_id
      attr_accessor :usr_record_id
      attr_accessor :customer
      attr_accessor :employee
      attr_accessor :tag
      attr_accessor :tag_type

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :emp_record_id, type: Integer
        property :id, type: Integer
        property :resource_table_id, type: Integer
        property :tag_id, type: Integer
        property :tag_type_id, type: Integer
        property :usr_record_id, type: Integer
      end
    end
  end
end
