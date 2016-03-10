module Softlayer
  module Resource
    class Group
      class Template < Softlayer::Model
        SERVICE = 'SoftLayer_Resource_Group_Template'
        autoload :Member, 'softlayer/resource/group/template/member'
        attr_accessor :description
        attr_accessor :id
        attr_accessor :key_name
        attr_accessor :children_count
        attr_accessor :member_count
        attr_accessor :children
        attr_accessor :members
        attr_accessor :package

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::Resource::Group::Template])
        end

        def get_children
          request(:get_children, Array[Softlayer::Resource::Group::Template])
        end

        def get_members
          request(:get_members, Array[Softlayer::Resource::Group::Template::Member])
        end

        def get_object
          request(:get_object, Softlayer::Resource::Group::Template)
        end

        def get_package
          request(:get_package, Softlayer::Product::Package)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :description, type: String
          property :id, type: Integer
          property :key_name, type: String
          property :children_count, type: BigDecimal
          property :member_count, type: BigDecimal
        end
      end
    end
  end
end
