module Softlayer
  module Scale
    module Termination
      class Policy < Softlayer::Model
        SERVICE = 'SoftLayer_Scale_Termination_Policy'
        attr_accessor :id
        attr_accessor :key_name
        attr_accessor :name

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::Scale::Termination::Policy])
        end

        def get_object
          request(:get_object, Softlayer::Scale::Termination::Policy)
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
