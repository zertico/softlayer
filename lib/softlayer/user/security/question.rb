module Softlayer
  module User
    module Security
      class Question < Softlayer::Model
        SERVICE = 'SoftLayer_User_Security_Question'
        attr_accessor :display_order
        attr_accessor :id
        attr_accessor :question
        attr_accessor :viewable

        def self.get_all_objects
          request(:get_all_objects, Array[Softlayer::User::Security::Question])
        end

        def get_object
          request(:get_object, Softlayer::User::Security::Question)
        end

        class Representer < Representable::Decorator
          include Representable::Hash
          include Representable::Coercion
          property :display_order, type: Integer
          property :id, type: Integer
          property :question, type: String
          property :viewable, type: Integer
        end
      end
    end
  end
end
