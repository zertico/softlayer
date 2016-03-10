module Softlayer
  module Scale
    class Group
      class Log < Softlayer::Model
        attr_accessor :create_date
        attr_accessor :description
        attr_accessor :id
        attr_accessor :scale_group_id
        attr_accessor :scale_group

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :create_date, type: DateTime
          property :description, type: String
          property :id, type: Integer
          property :scale_group_id, type: Integer
        end
      end
    end
  end
end
