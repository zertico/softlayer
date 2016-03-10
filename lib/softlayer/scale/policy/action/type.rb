module Softlayer
  module Scale
    class Policy
      class Action
        class Type < Softlayer::Model
          SERVICE = 'SoftLayer_Scale_Policy_Action_Type'
          attr_accessor :id
          attr_accessor :key_name
          attr_accessor :name

          def self.get_all_objects
            request(:get_all_objects, Array[Softlayer::Scale::Policy::Action::Type])
          end

          def get_object
            request(:get_object, Softlayer::Scale::Policy::Action::Type)
          end

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :id, type: Integer
            property :key_name, type: String
            property :name, type: String
          end
        end
      end
    end
  end
end
