module Softlayer
  module Resource
    class Group
      class Attribute < Softlayer::Entity
        autoload :Type, 'softlayer/resource/group/attribute/type'
        attr_accessor :create_date
        attr_accessor :id
        attr_accessor :value
        attr_accessor :group
        attr_accessor :type

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :id, type: Integer
          property :value, type: String
        end
      end
    end
  end
end
